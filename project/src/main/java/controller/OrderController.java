package controller;

import java.util.ArrayList;
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
	
	// 구매하기
	@PostMapping("order_write")
	public ModelAndView order_write(int buyingtype, int[] kit_num, int[] cl_num, @RequestParam("lastcount") Integer[] count, HttpSession session) {
		ModelAndView mav = new ModelAndView("order/order_write");
		User loginUser = (User)session.getAttribute("loginUser");
		List<Postaddr> postList = service_pr.postList(loginUser.getEmailid());
		if(postList!=null) {
			mav.addObject("postList", postList);
		}
		mav.addObject("user", loginUser);
		List<Basket> basketList = new ArrayList<Basket>();
		int lastsum =0;
		if(buyingtype ==0) { // 옵션 , 바로신청하기
			for(int i=0; i<1; i++) {
//				// 우선 장바구니에 넣고
//				service_pr.basketAdd(kit_num[i], cl_num[i], count[i], loginUser.getEmailid());
				// 읽어오자
//				basketList = service_pr.basketList(loginUser.getEmailid());
				Kit kitDetail = service_pr.kitInfo(kit_num[i], cl_num[i]);
				Class classDetail = service.classDetail(cl_num[i]);
				lastsum += count[i] * kitDetail.getKit_price(); //가격합계
				
				mav.addObject("classes", classDetail);
				mav.addObject("kit", kitDetail);
				mav.addObject("count", count[i]);
				
			}
			mav.addObject("b", lastsum);
		} else if(buyingtype ==1) { // 장바구니
			basketList = service_pr.basketList(loginUser.getEmailid());
			for(int i=0; i<cl_num.length; i++) {
				Kit kitDetail = service_pr.kitInfo(kit_num[i], cl_num[i]);
				Class classDetail = service.classDetail(cl_num[i]);
				basketList.get(i).setCls(classDetail);
				basketList.get(i).setKit(kitDetail);
				basketList.get(i).setCount(count[i]);
				
				lastsum += count[i] * kitDetail.getKit_price(); //가격합계
			}
			mav.addObject("c", cl_num.length);
			mav.addObject("blist", basketList);
			mav.addObject("count", count);
		}
		mav.addObject("buyingtype", buyingtype);
		mav.addObject("kit_num", kit_num);
		mav.addObject("cl_num", cl_num);
		mav.addObject("lastsum", lastsum);
		return mav;
	}

	//배송지 목록
	@RequestMapping("addresslist")
	public ModelAndView basketView(String emailid,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User user = service.getUser(emailid);
		List<Postaddr> postList = service_pr.postList(user.getEmailid());
		mav.addObject("postList", postList);
		
		// 배송지 개수
		int postListCnt = service_pr.postListCnt(user.getEmailid());
		mav.addObject("postListCnt", postListCnt);
		return mav;
	}
	
	//결제
	@PostMapping("order")
	@ResponseBody
	public String order(@RequestParam Map<String,Object> map,HttpSession session) throws Exception{
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
		uorder.setOd_mileage(Integer.parseInt(map.get("od_mileage").toString()));
		//배송정보 등록
		System.out.println(map);
		service.orderInsert(uorder);
		
		String[] orderitem =  ((String)map.get("orderlist")).split(",");
		//orderitem : 장바구니상품갯수/cl_num,kit_num,수량
		for(int i=0;i<orderitem.length;i=i+3) {
			System.out.println(i);
			Orderlist odlist = new Orderlist();
			odlist.setOd_num(uorder.getOd_num());
			odlist.setCl_num(Integer.parseInt(orderitem[i]));
			odlist.setKit_num(Integer.parseInt(orderitem[i+1]));
			odlist.setCount(Integer.parseInt(orderitem[i+2]));
			System.out.println(odlist);
			//주문 목록 등록
			service.odlistInsert(odlist);
		}
		List<Uorder> order = service.userorderSelect((String)map.get("emailid"));
		
			session.setAttribute("order",order);
		
		//사용마일리지
		int mileage = Integer.parseInt(map.get("mileage").toString());
		if(mileage>0) {
			service.mileageInsert((String)map.get("emailid"),"결제 사용",mileage,2,uorder.getOd_num());
			service.mileageupdate((String)map.get("emailid"));
		}
		return "?od_num="+uorder.getOd_num();
	}
	
	
	@RequestMapping("order_success")
	public ModelAndView order_success(int od_num) throws Exception{
		ModelAndView mav = new ModelAndView();
		Uorder order = service.orderSelect(od_num);
		List<Orderlist> odlist = service.order_odlist(od_num); //orderlist 가져옴
		List<Class> cls = new ArrayList<>(); //class 정보 담는 list
		int aprice = 0;
		for(int i=0;i<odlist.size();i++) {
			//주문 목록
			cls.add(service.getboard(odlist.get(i).getCl_num()));
			//주문 목록(키트)
			System.out.println(odlist);
			cls.get(i).setKit(service_pr.kitInfo(odlist.get(i).getKit_num(), odlist.get(i).getCl_num()));
			aprice += odlist.get(i).getCount() * cls.get(i).getKit().getKit_price();
		}
		int pprice = aprice - order.getOd_mileage();
		
		mav.addObject("odlist",odlist);
		mav.addObject("order",order);
		mav.addObject("cls",cls);
		mav.addObject("aprice",aprice);
		mav.addObject("pprice",pprice);
		
		return mav;
	}
}
