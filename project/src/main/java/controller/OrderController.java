package controller;

import java.util.List;

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
import org.springframework.web.servlet.ModelAndView;

import logic.Basket;
import logic.Class;
import logic.Kit;
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

	// 구매하기
	@PostMapping("order_write")
	public ModelAndView order_write(int buyingtype, int[] kit_num, int[] cl_num, @RequestParam("lastcount") Integer[] count, HttpSession session) {
		ModelAndView mav = new ModelAndView("order/order_write");
		User loginUser = (User)session.getAttribute("loginUser");
		
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
				
				lastsum += count[i] * kitDetail.getKit_price();
			}
		}
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
	
//	@GetMapping("order_write")
//	public ModelAndView order_write(@Valid Uorder uorder,BindingResult bresult){
//		ModelAndView mav = new ModelAndView();
//		if(bresult.hasErrors()) {
//			bresult.reject("error.input.user");
//			mav.getModel().putAll(bresult.getModel());
//		}
//		try {
//			service.orderInsert(uorder);
//			mav.addObject("uorder",uorder);
//		}catch(DataIntegrityViolationException e) {
//			e.printStackTrace();
//		}
//		return mav;
//	}

	//서현
//	@PostMapping("order_write")
//	public ModelAndView order_write(@Valid Uorder uorder,BindingResult bresult){
//		ModelAndView mav = new ModelAndView();
//		if(bresult.hasErrors()) {
//			mav.getModel().putAll(bresult.getModel());
//			return mav;
//		}
//		try {
//			service.orderInsert(uorder);
//			mav.addObject("uorder",uorder);
//		}catch(DataIntegrityViolationException e) {
//			e.printStackTrace();
//		}
//		return mav;
//	}
	
	
	@PostMapping("order_success")
	public String order_success() 
	{
		return "order/order_success";
	}
}
