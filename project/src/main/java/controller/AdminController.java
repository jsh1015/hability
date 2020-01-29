package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.Class;
import logic.Kit;
import logic.ShopService;

@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	public ShopService service;
	
	@RequestMapping("admain")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping("boardlist") //게시물 목록
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
	    List<Class> classList = service.classList();
	    mav.addObject("classList",classList);
		return mav;
	}
	
	@GetMapping("boardwrite") //게시물 등록
	public ModelAndView getwrite() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("class",new Class());
		return mav;
	}
	
	@PostMapping("boardwrite")
	public ModelAndView boardwrite(Class classes,BindingResult bresult,HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		if(bresult.hasErrors()) {
			mav.getModel().putAll(bresult.getModel());
			return mav;
		}
		try {
			service.boardwrite(classes,request);
			mav.setViewName("redirect:boardlist.shop");
		}catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	@GetMapping("kit") //키트등록
	public ModelAndView getkit() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("kit",new Kit());
		return mav;
	}
	
	@PostMapping("kit") 
	public ModelAndView kit(Kit kit,Integer cl_num,BindingResult bresult,HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		if(bresult.hasErrors()) {
			mav.getModel().putAll(bresult.getModel());
			return mav;
		}
		try {
			service.kitinsert(kit,cl_num,request);
			mav.setViewName("redirect:kit.shop");
		}catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
}
