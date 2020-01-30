package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.Basket;
import logic.Postaddr;
import logic.ShopService_pr;
import logic.User;

@Controller
public class PoohController {
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
		
		// phone2 혹
		if(postaddr.getPo_phone2().equals("")) postaddr.setPo_phone2(null);
				
		try {
			System.out.println("po_addr emailid = "+loginUser.getEmailid());
			postaddr.setEmailid(loginUser.getEmailid());
			service_pr.po_addr_insert(postaddr);
			mav.setViewName("redirect:mypage.shop?emailid="+loginUser.getEmailid());
		} catch(Exception e) {
			mav.setViewName("redirect:mypage.shop?emailid="+loginUser.getEmailid());
			e.printStackTrace();
		}
		return mav;
	}
	
	@RequestMapping("list/basketAdd")
	public ModelAndView add(String id, Integer quantity, HttpSession session) {
		ModelAndView mav = new ModelAndView("order/basketList"); // view지정 (왜? cartAdd.jsp로 가는게 아니니까)
		
//		// 선택된 상품 객체
//		Class basketClass = service_pr.basketInfo(id);
//		
//		
//		Cart cart = (Cart)session.getAttribute("CART");
//		if(cart ==null) { // 장바구니가 비었을 때,
//			cart = new Cart(); // session에 등록된 cart
//			session.setAttribute("CART", cart);
//		}
//		
//		// itemSetList에 추가 됨
//		cart.push(new ItemSet(item, quantity));
//
//		mav.addObject("message", item.getName() + ":" + quantity + "개 장바구니 추가");
//		mav.addObject("cart", cart);
		
		return mav;
	}
	
	@RequestMapping("order/basketList")
	public ModelAndView basketList() {
		ModelAndView mav = new ModelAndView();
				
		mav.addObject(new Basket());
		
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
	
}
