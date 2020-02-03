package controller;

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
//	@GetMapping("*")
//	public String form(Model model) {
//		model.addAttribute(new Uorder());
//		model.addAttribute(new User());
//		return null;
//	}
	
//	@RequestMapping("basketView")
//	public ModelAndView basketView(HttpSession session) {
//		ModelAndView mav = new ModelAndView("basketList");
//		return mav;
//	}
	
	// 옵션에서 바로 구매
	@RequestMapping("order_write")
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
	
	@PostMapping("order_success")
	public String order_success() 
	{
		return "order/order_success";
	}
}
