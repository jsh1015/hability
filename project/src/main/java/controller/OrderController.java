package controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.ShopService;
import logic.Uorder;
import logic.User;

@Controller
@RequestMapping("order")
public class OrderController {
	@Autowired
	private ShopService service;
	
	@RequestMapping("*")
	public ModelAndView cartlist(Integer pageNum) {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	@GetMapping("*")
	public String form(Model model) {
		model.addAttribute(new Uorder());
		model.addAttribute(new User());
		return null;
	}
	
	@RequestMapping("order_write")
	public ModelAndView order_write(@Valid Uorder uorder,BindingResult bresult){
		ModelAndView mav = new ModelAndView();
		if(bresult.hasErrors()) {
			bresult.reject("error.input.user");
			mav.getModel().putAll(bresult.getModel());
		}
		try {
			service.orderInsert(uorder);
			mav.addObject("uorder",uorder);
		}catch(DataIntegrityViolationException e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	@PostMapping("order_success")
	public String order_success() 
	{
		return "order/order_success";
	}
}
