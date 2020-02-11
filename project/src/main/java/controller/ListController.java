package controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import logic.Class;
import logic.Comment;
import logic.Kit;
import logic.ShopService;
import logic.Ulike;

@Controller
@RequestMapping("list")
public class ListController {
   @Autowired
   private ShopService service;
   
   @RequestMapping("hobbyClass")
   public ModelAndView hlist(Integer board_type,Integer cl_category) {
      ModelAndView mav = new ModelAndView();
      List<Class> classList = service.classList(board_type,cl_category);
      System.out.println(cl_category);
      mav.addObject("classList",classList);
      return mav;
   }
   
   @RequestMapping("diystore")
   public ModelAndView dlist(Integer board_type,Integer cl_category) {
      ModelAndView mav = new ModelAndView();
      List<Class> classList = service.classList(board_type,cl_category);
      mav.addObject("classList",classList);
      return mav;
   }
   
   @RequestMapping("detail")
	public ModelAndView detail(Integer cl_num,String emailid) {
		ModelAndView mav = new ModelAndView();
		// 세부정보 넘겨줌
		Class classDetail = service.classDetail(cl_num);
		// 옵션값 넘겨줌
		List<Kit> kitList = service.kitList(cl_num);
		
		//좋아요 확인하기
		String check = service.likeselect(cl_num,emailid);
		System.out.println(emailid);
		// 옵션 개수
		mav.addObject("kitcnt", kitList.size());
		//게시물 내용
		mav.addObject("classDetail", classDetail);
		mav.addObject("kitList", kitList);
		//좋아요 확인
		mav.addObject("check",check);
		
		return mav;
	}
   
   @RequestMapping("like")
   @ResponseBody
   public String like(int cl_num,String emailid,int board_type) {
		Ulike ul = new Ulike();
		ul.setCl_num(cl_num);
		ul.setEmailid(emailid);	
		ul.setLike_type(board_type);
		
		String check = service.likeselect(cl_num,emailid);
		System.out.println(check);
		String h = "";
		
		if(check == null) {
			System.out.println("추가");
			service.likeinsert(ul);
		}else {			
			System.out.println("삭제");
			service.likedelete(ul);
			h = "btn-like-off";
		}
		return h;
   }
   
   //매거진 목록
	@RequestMapping("magazine")
	public ModelAndView mlist(Integer board_type,Integer cl_category) 
	{
	    ModelAndView mav = new ModelAndView();
	    List<Class> classList = service.classList(board_type,cl_category);
	    mav.addObject("classList",classList);
	    return mav;
	}
   
	//매거진 상세보기
	@RequestMapping("mdetail")
	public ModelAndView mdetail(Integer cl_num,String emailid,Integer cl_category,Integer cm_type)
	{
		ModelAndView mav = new ModelAndView();
		Class classDetail = service.classDetail(cl_num);
		List<Comment> commentList = service.commentList(cl_num,cm_type);
	    List<Class> classList = service.classList(3,cl_category);
	    
		//좋아요 확인하기
		String check = service.likeselect(cl_num,emailid);
		
	    mav.addObject("classList",classList);
		mav.addObject("classDetail", classDetail);
		mav.addObject("commentList", commentList);
		mav.addObject("check",check);
		return mav;
	}
   
	@RequestMapping("mlike")
	@ResponseBody
	public String mlike(int cl_num,String emailid,int board_type) {
		Ulike ul = new Ulike();
		ul.setCl_num(cl_num);
		ul.setEmailid(emailid);	
		ul.setLike_type(board_type);
		
		String check = service.likeselect(cl_num,emailid);
		System.out.println(check);
		String h = "";
		
		if(check == null) {
			System.out.println("추가");
			service.likeinsert(ul);
			h = "btn-magazine-like-on";
		}else {			
			System.out.println("삭제");
			service.likedelete(ul);
		}
		return h;
	}
   
   @RequestMapping("service")
   public String service() {
	   return "list/service";
   }
   
   @GetMapping("*")
   public String hobbyClass() 
   {
      return "list/hobbyClass";
   }
   
   //cm_content
   @RequestMapping("commentinsert")
   public ModelAndView commentinsert(int cl_num,String cm_content, String emailid)
   {
	   ModelAndView mav = new ModelAndView();
			service.commentinsert(cl_num, 2, cm_content, emailid);
			int commentcount = service.commentcount(cl_num);
			mav.addObject("commentcount", commentcount);
			mav.setViewName("redirect:mdetail.shop?cl_num="+ cl_num);
		return mav;
   }

}