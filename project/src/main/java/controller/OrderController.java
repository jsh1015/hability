package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.ShopService;

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
	@RequestMapping("order_write")
	public String order_write() 
	{
		return "order/order_write";
	}
	
	@PostMapping("order_success")
	public String order_success() 
	{
		return "order/order_success";
	}
}
