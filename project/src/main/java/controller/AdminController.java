package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@RequestMapping("admain")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
}
