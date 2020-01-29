package controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	public ModelAndView postaddr(@Valid Postaddr postaddr, BindingResult bresult, String emailid) throws Exception{
		ModelAndView mav = new ModelAndView("user/mypage"); // po_addr이 없으니까 지정해줘
		// 유효성 검증
		// @Valid : 이 가능하려면 User 객체에 어노테이션이 되어있어야함
		// System.out.println(postaddr);
		// System.out.println(bresult.getModel());
		if(bresult.hasErrors()) {
			mav.getModel().putAll(bresult.getModel());
			return mav;
		}
		try {
			User user = service_pr.getEmailid(emailid);
			System.out.println(user.getEmailid());
			service_pr.po_addr_insert(postaddr, user.getEmailid());
			mav.setViewName("redirect:mypage.shop?emailid="+user.getEmailid());
		} catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	
}
