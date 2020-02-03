package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
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
import logic.User;

@Controller
public class PoohController {
	@Autowired
	private ShopService service;
	@Autowired
	private ShopService_pr service_pr;
	
//	@RequestMapping("user/mypage")
//	public ModelAndView form() {
//		ModelAndView mav = new ModelAndView();
//		mav.addObject(new Postaddr()); // 빈 객체를 전달
//		return mav;
//	}
	
	@PostMapping("user/po_addr")
	public ModelAndView postaddr(@Valid Postaddr postaddr, BindingResult bresult, HttpSession session) throws Exception{
		User loginUser = (User)session.getAttribute("loginUser");

		ModelAndView mav = new ModelAndView("user/mypage"); // po_addr이 없으니까 지정해줘
		// 유효성 검증
		// @Valid : 이 가능하려면 User 객체에 어노테이션이 되어있어야함
		System.out.println("입력한 postaddr = "+postaddr);
		
		if(bresult.hasErrors()) {
//			mav.setViewName("redirect:mypage.shop?emailid="+loginUser.getEmailid());
			mav.addObject("User", loginUser); //?
			mav.getModel().putAll(bresult.getModel());
			return mav;
		}
		
		// phone2 혹시..
		if(postaddr.getPo_phone2().equals("")) postaddr.setPo_phone2(null);
				
		try {
			System.out.println("po_addr emailid = "+loginUser.getEmailid());
			postaddr.setEmailid(loginUser.getEmailid());
			service_pr.po_addr_insert(postaddr);
			mav.setViewName("redirect:mypage.shop?emailid="+loginUser.getEmailid());
		} catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	// 옵션에서 바로 구매
	@RequestMapping("list/order_write")
	public ModelAndView order_write(String kit_num, int cl_num, @RequestParam("lastcount") Integer count, HttpSession session) {
		ModelAndView mav = new ModelAndView("order/order_write");

		System.out.println("order_write class = "+cl_num);
		System.out.println("order_write kit = "+kit_num);
		System.out.println("order_write count = "+count);
		
		// 선택된 상품 객체(옵션)
		Kit kitDetail = service_pr.kitInfo(kit_num, cl_num);
		System.out.println(kitDetail);
		Class classDetail = service.classDetail(cl_num);
		System.out.println(classDetail);
		mav.addObject("kitDetail", kitDetail);
		mav.addObject("count", count);
		mav.addObject("classDetail", classDetail);
//		mav.setViewName("redirect:../order/order_write.shop");
		return mav;
	}

	// 옵션에서 장바구니 담기
//	@RequestMapping("list/basketAdd")
//	public ModelAndView basketAdd(String kit_num, String cl_num, Integer count, HttpSession session) {
//		ModelAndView mav = new ModelAndView("order/basketList");
//		User loginUser = (User)session.getAttribute("loginUser");
//		
//		System.out.println("basketAdd kit = "+kit_num);
//		System.out.println("basketAdd class = "+cl_num);
//		System.out.println("basketAdd count = "+count);
//
//		// 선택된 상품 객체 (클래스의 옵션)
//		Kit kit = service_pr.kitInfo(kit_num, cl_num);
//		
//		// 장바구니
//		Basket basket = new Basket();
//		service_pr.basketAdd(kit);
//		return mav;
//	}
	
	@RequestMapping("order/basketView")
	public ModelAndView basketList(HttpSession session) {
		ModelAndView mav = new ModelAndView("order/basketList");
		mav.addObject(new Basket());
		
		return mav;
	}
	
	// ajax 요청된 메서드
	@RequestMapping("ajax/basketAddCheck")
	public ModelAndView basketAddCheck(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("list/detail");
		int cl_num = Integer.parseInt(request.getParameter("cl_num")); // data에서 넘어온 cl_num값
		int kit_num = Integer.parseInt(request.getParameter("kit_num"));
		int lastcount = Integer.parseInt(request.getParameter("lastcount"));
		String emailid = request.getParameter("emailid");
		
		System.out.println("ajax cl_num = " + cl_num);
		System.out.println("ajax kit_num = " + kit_num);
		System.out.println("ajax lastcount = " + lastcount);
		System.out.println("ajax emailid = " + emailid);

//		mav.addObject("cl_num", cl_num); // ajax으로 넘어감
//		mav.addObject("kit_num", kit_num);
//		mav.addObject("lastcount", lastcount);
//		mav.addObject("emailid", emailid);
		
		// 선택된 상품 객체 (클래스의 옵션)
//		Kit kit = service_pr.kitInfo(kit_num, cl_num);
		// 장바구니
//		Basket basket = new Basket();
//		service_pr.basketAdd(kit);
		return mav;
	}
	
	// ajax 요청된 메서드
	@RequestMapping("ajax/optionModal")
	public ModelAndView optionModal(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		int cl_num = Integer.parseInt(request.getParameter("cl_num")); // data에서 넘어온 cl_num값
		System.out.println("ajax = "+cl_num);
		
		mav.addObject("cl_num", cl_num); // ajax으로 넘어감
		return mav;
	}
	
	// ajax 요청된 메서드
	@RequestMapping("ajax/addrDeleteModal")
	public ModelAndView addrDeleteModal(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		int po_num = Integer.parseInt(request.getParameter("po_num")); // data에서 넘어온 cl_num값
		System.out.println("ajax po_num = " + po_num);
		
		service_pr.addrDelete(po_num);
		mav.addObject("po_num", po_num); // ajax으로 넘어감
		return mav;
	}

}
