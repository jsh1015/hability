package controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import logic.Basket;
import logic.Class;
import logic.Kit;
import logic.Orderlist;
import logic.Postaddr;
import logic.ShopService;
import logic.ShopService_pr;
import logic.Uorder;
import logic.User;

@Controller
@RequestMapping("order")
public class OrderController {
	@Autowired
	private ShopService service;
	@Autowired
	private ShopService_pr service_pr;
	
//	@RequestMapping("*")
//	public ModelAndView cartlist(Integer pageNum) {
//		ModelAndView mav = new ModelAndView();
//		return mav;
//	}
	@GetMapping("*")
	public String form(Model model) {
		model.addAttribute(new Uorder());
		model.addAttribute(new User());
		return null;
	}
//	@RequestMapping("basketView")
//	public ModelAndView basketView(HttpSession session) {
//		ModelAndView mav = new ModelAndView("basketList");
//		return mav;
//	}

//	// 옵션에서 바로 구매 //서현
//		@RequestMapping("order_write")
//		public ModelAndView order_write(String kit_num, @RequestParam("cl_num")int cl_num, @RequestParam("lastcount") Integer count,
//				HttpSession session) {
//			ModelAndView mav = new ModelAndView();
//			User loginUser = (User) session.getAttribute("loginUser");
//			mav.addObject("user", loginUser);
//			
//			// 선택된 상품 객체(옵션)
//			Kit kitDetail = service_pr.kitInfo(kit_num, cl_num);
//			System.out.println("kitDetail" + kitDetail);
//			Class classDetail = service.classDetail(cl_num);
//			System.out.println("classDetail" + classDetail);
//			mav.addObject("kitDetail", kitDetail);
//			mav.addObject("count", count);
//			mav.addObject("classDetail", classDetail);
////			mav.setViewName("redirect:../order/order_write.shop");
//			return mav;
//		}
		
	// 구매하기
	@PostMapping("order_write")
	public ModelAndView order_write(int buyingtype, int[] kit_num, int[] cl_num, @RequestParam("lastcount") Integer[] count, HttpSession session) {
		ModelAndView mav = new ModelAndView("order/order_write");
		User loginUser = (User)session.getAttribute("loginUser");
		mav.addObject("user", loginUser);
		List<Basket> basketList = service_pr.basketList(loginUser.getEmailid());
		int lastsum =0;
		if(buyingtype ==0) { // 옵션
			for(int i=0; i<1; i++) {
				// 우선 장바구니에 넣고
				service_pr.basketAdd(kit_num[i], cl_num[i], count[i], loginUser.getEmailid());
				// 읽어오자
				basketList = service_pr.basketList(loginUser.getEmailid());
				
				Kit kitDetail = service_pr.kitInfo(kit_num[i], cl_num[i]);
				Class classDetail = service.classDetail(cl_num[i]);
				basketList.get(i).setCls(classDetail);
				basketList.get(i).setKit(kitDetail);
			}
		} else if(buyingtype ==1) { // 장바구니
			
			for(int i=0; i<cl_num.length; i++) {
				System.out.println("장바구니 구매 class = "+cl_num[i]);
				System.out.println("장바구니 구매 kit = "+kit_num[i]);
				System.out.println("장바구니 구매 count = "+count[i]);
				Kit kitDetail = service_pr.kitInfo(kit_num[i], cl_num[i]);
				Class classDetail = service.classDetail(cl_num[i]);
				basketList.get(i).setCls(classDetail);
				basketList.get(i).setKit(kitDetail);
				basketList.get(i).setCount(count[i]);
				
				lastsum += count[i] * kitDetail.getKit_price(); //가격합계
			}
		}
		System.out.println(lastsum);
		mav.addObject("buyingtype", buyingtype);
		mav.addObject("kit_num", kit_num);
		mav.addObject("cl_num", cl_num);
		mav.addObject("count", count);
		mav.addObject("blist", basketList);
		mav.addObject("lastsum", lastsum);
		return mav;
	}

	//배송지 목록
	@RequestMapping("addresslist")
	public ModelAndView basketView(String emailid,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		System.out.println("아이디 = " + emailid);
		User user = service.getUser(emailid);
		List<Postaddr> postList = service_pr.postList(user.getEmailid());
		mav.addObject("postList", postList);
		
		// 배송지 개수
		int postListCnt = service_pr.postListCnt(user.getEmailid());
		System.out.println("배송지 개수 = " + postListCnt);
		mav.addObject("postListCnt", postListCnt);
		return mav;
	}
	
	//결제
	@PostMapping("order")
	@ResponseBody
	public String order(@RequestParam Map<String,Object> map) throws Exception{
//		ModelAndView mav = new ModelAndView();
		
		Uorder uorder = new Uorder();
		int od_num = service.ordermaxnum();
		uorder.setOd_num(++od_num);
		uorder.setEmailid((String)map.get("emailid"));
		uorder.setName((String)map.get("name")); //주문자명
		uorder.setPhone((String)map.get("phone"));
		uorder.setOd_name((String)map.get("od_name"));
		uorder.setOd_client((String)map.get("od_client"));
		uorder.setOd_phone((String)map.get("od_phone"));
		uorder.setOd_phone2((String)map.get("od_phone2"));
		uorder.setOd_comment((String)map.get("od_comment"));
		uorder.setOd_postcode((String)map.get("od_postcode"));
		uorder.setOd_addr_main((String)map.get("od_addr_main"));
		uorder.setOd_addr_sub((String)map.get("od_addr_sub"));
		//배송정보 등록
		service.orderInsert(uorder);
		
		Orderlist odlist = new Orderlist();
		odlist.setOd_num(uorder.getOd_num());
		odlist.setCl_num(Integer.parseInt(map.get("cl_num").toString()));
		odlist.setKit_num(Integer.parseInt(map.get("kit_num").toString()));
		odlist.setCount(Integer.parseInt(map.get("count").toString()));
		//주문목록 등록
		service.odlistInsert(odlist);
		
		//사용마일리지
		int mileage = Integer.parseInt(map.get("mileage").toString());
		if(mileage>0) {
			service.mileageInsert((String)map.get("emailid"),"결제 사용",mileage,2);
			service.mileageupdate((String)map.get("emailid"));
		}
//		mav.setViewName("redirect:../order/order_success.shop");
//		mav.addObject("odlist",odlist);
//		mav.setViewName("order/order_success");
//		return mav;
		return "?od_num="+odlist.getOd_num() +"&cl_num="+odlist.getCl_num();
	}
	
	
	@PostMapping("order_success")
	public String order_success() 
	{
		return "order/order_success";
	}
}
