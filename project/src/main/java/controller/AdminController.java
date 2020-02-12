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
import logic.Comment;
import logic.Kit;
import logic.Notice;
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
	public ModelAndView list(Integer board_type,Integer cl_category,HttpSession session) {
		ModelAndView mav = new ModelAndView();
	    List<Class> classList = service.classList(board_type,cl_category);
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
	
	@RequestMapping("comment")
	public ModelAndView commentlist(Integer cl_num,Integer cm_type, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<Comment> clist = service.commentList(cl_num,cm_type);
		for(int i=0;i<clist.size();i++) {
			Class cl = service.classDetail(clist.get(i).getCl_num());
			clist.get(i).setCl_title(cl.getCl_title());
		}
		mav.addObject("clist",clist);
		return mav;
	}
	
	@RequestMapping("cmdelete")
	public ModelAndView cmdelete(Integer cm_num, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		service.cmdelete(cm_num);
		mav.setViewName("redirect:comment.shop");
		return mav;
	}

	//월별매출
	@RequestMapping("monthsales")
	public ModelAndView month(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	//회원삭제
	@RequestMapping("userdelete")
	public ModelAndView userdelete(String emailid, HttpSession session) {
		//user,basket,comment,mileage,postaddr,uorder,user
		service.userinfo(emailid);
		service.userDelete(emailid); //회원 삭제
		ModelAndView mav = new ModelAndView();
	    List<User> userList = service.userList();
	    mav.addObject("userList",userList);
		mav.setViewName("redirect:../admin/userlist.shop");
		return mav;
	}
	
	// 고객센터 등록
	@PostMapping("noticewrite")
	public ModelAndView noticewrite(Notice notice) {
		ModelAndView mav = new ModelAndView();
		try {
			service.noticewrite(notice);
			mav.setViewName("redirect:noticelist.shop");
		}catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	// 고객센터 목록
	@RequestMapping("noticelist")
	public ModelAndView noticelist(HttpSession session) {
		ModelAndView mav = new ModelAndView();
	    List<Notice> noticeList = service.noticeList();
	    mav.addObject("noticeList",noticeList);
		return mav;
	}


}

