package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

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
import logic.User;
import logic.Video;

@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	public ShopService service;
	
	@RequestMapping("admain")
	public ModelAndView main(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping("boardlist") //게시물 목록
	public ModelAndView list(Integer board_type,HttpSession session) {
		ModelAndView mav = new ModelAndView();
	    List<Class> classList = service.classList(board_type);
	    mav.addObject("classList",classList);
		return mav;
	}
	
	@GetMapping("boardwrite") //게시물 등록
	public ModelAndView getwrite(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("class",new Class());
		return mav;
	}
	
	@PostMapping("boardwrite")
	public ModelAndView boardwrite(@Valid Class classes,BindingResult bresult,HttpServletRequest request,HttpSession session) {
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
	
	@PostMapping("boardedit") //게시물 수정
	public ModelAndView edit(Class classes, BindingResult bresult, HttpServletRequest request,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if(bresult.hasErrors()) {
			mav.getModel().putAll(bresult.getModel());
			return mav;
		}
		service.boardedit(classes,request);
		mav.setViewName("redirect:/admin/boardlist.shop");
		return mav;
	}
	
	@PostMapping("boarddel") //게시물 삭제
	public ModelAndView delete(Class classes, BindingResult bresult,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		service.boarddel(classes);
		mav.setViewName("redirect:boardlist.shop");
		return mav;
	}
	
	@GetMapping("kit") //키트등록
	public ModelAndView getkit(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("kit",new Kit());
		return mav;
	}
	
	@PostMapping("kit") 
	public ModelAndView kit(@Valid Kit kit, Integer cl_num, BindingResult bresult, HttpServletRequest request,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if(bresult.hasErrors()) {
			mav.getModel().putAll(bresult.getModel());
			return mav;
		}
		try {
			service.kitinsert(kit,cl_num,request);
			mav.setViewName("redirect:kit.shop?cl_num="+cl_num);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	@RequestMapping("kitdelete")
	public ModelAndView deletekit(Integer cl_num, Integer kit_num,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		service.kitdelete(cl_num,kit_num);
		mav.setViewName("redirect:kit.shop?cl_num="+cl_num);
		return mav;
	}
	
	//비디오 등록
	@GetMapping("video")
	public ModelAndView getvideo(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("video",new Video());
		return mav;
	}
	
	@PostMapping("video") 
	public ModelAndView video(@Valid Video video, Integer cl_num, BindingResult bresult, HttpServletRequest request,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if(bresult.hasErrors()) {
			mav.getModel().putAll(bresult.getModel());
			return mav;
		}
		try {
			service.videoinsert(video,cl_num,request);
			mav.setViewName("redirect:video.shop?cl_num="+cl_num);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	//비디오삭제
	@RequestMapping("videodelete")
	public ModelAndView deletevideo(Integer cl_num, Integer v_num,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		service.vdelete(cl_num,v_num);
		mav.setViewName("redirect:video.shop?cl_num="+cl_num);
		return mav;
	}
	
	@RequestMapping("userlist") //회원 목록
	public ModelAndView userlist(HttpSession session) {
		ModelAndView mav = new ModelAndView();
	    List<User> userList = service.userList();
	    mav.addObject("userList",userList);
		return mav;
	}
	@RequestMapping("userdetail") //회원 목록
	public ModelAndView userdetail(String emailid,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User user = service.userdetail(emailid);
		mav.addObject("user",user);
		return mav;
	}
	
	@GetMapping("*")
	public ModelAndView select(Integer cl_num,HttpSession session) {
		Class classes = service.getboard(cl_num);
		ModelAndView mav = new ModelAndView();
		mav.addObject("classes",classes);
		return mav;
	}

}

