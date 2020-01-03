package controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import logic.ShopService;

@Controller //@Component + Controller : 객체를 만들고 컨트롤러의 기능까지 같이 수행
@RequestMapping("list") //item/xxx.shop
public class ListController {
	@Autowired
	private ShopService service;
	
	@GetMapping("*")
	public String hobbyClass() {
		return "list/hobbyClass";
	}
	
}
