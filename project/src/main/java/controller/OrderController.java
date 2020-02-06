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

	// 옵션에서 바로 구매
	@RequestMapping("order_write")
	public ModelAndView order_write(String kit_num, int cl_num, @RequestParam("lastcount") Integer count,
			HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User loginUser = (User) session.getAttribute("loginUser");
		mav.addObject("user", loginUser);
		System.out.print("kit_num = " + kit_num + ", cl_num =");
		System.out.println(cl_num);
		// 선택된 상품 객체(옵션)
		Kit kitDetail = service_pr.kitInfo(kit_num, cl_num);
		System.out.println("kitDetail" + kitDetail);
		Class classDetail = service.classDetail(cl_num);
		System.out.println("classDetail" + classDetail);
		mav.addObject("kitDetail", kitDetail);
		mav.addObject("count", count);
		mav.addObject("classDetail", classDetail);
//		mav.setViewName("redirect:../order/order_write.shop");
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
