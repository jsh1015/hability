package controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.Class;
import logic.ShopService;

@Controller
@RequestMapping("list")
public class ListController {
	@Autowired
	private ShopService service;
	
	@RequestMapping("hobbyClass")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		List<Class> classList = service.classList();
		mav.addObject("classList",classList); 
		return mav;
	}
	
	@RequestMapping("diystore")
	public ModelAndView list(Integer pageNum) {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	@RequestMapping("detail")
	public ModelAndView detail() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@GetMapping("*")
	public String hobbyClass() 
	{
		return "list/hobbyClass";
	}
}