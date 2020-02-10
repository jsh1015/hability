package controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.Class;
import logic.Comment;
import logic.Kit;
import logic.ShopService;

@Controller
@RequestMapping("list")
public class ListController {
   @Autowired
   private ShopService service;
   
   @RequestMapping("hobbyClass")
   public ModelAndView hlist(Integer board_type) {
      ModelAndView mav = new ModelAndView();
      List<Class> classList = service.classList(board_type);
      mav.addObject("classList",classList);
      return mav;
   }
   
   @RequestMapping("diystore")
   public ModelAndView dlist(Integer board_type) {
      ModelAndView mav = new ModelAndView();
      List<Class> classList = service.classList(board_type);
      mav.addObject("classList",classList);
      return mav;
   }
   
   @RequestMapping("detail")
	public ModelAndView detail(int cl_num) {
		ModelAndView mav = new ModelAndView();

		// 세부정보 넘겨줌
		Class classDetail = service.classDetail(cl_num);

		// 옵션값 넘겨줌
		List<Kit> kitList = service.kitList(cl_num);
		// 옵션 개수
		mav.addObject("kitcnt", kitList.size());
		mav.addObject("classDetail", classDetail);
		mav.addObject("kitList", kitList);
		return mav;
	}
   
   //매거진 목록
	@RequestMapping("magazine")
	public ModelAndView mlist(Integer board_type) 
	{
	    ModelAndView mav = new ModelAndView();
	    List<Class> classList = service.classList(board_type);
	    mav.addObject("classList",classList);
	    return mav;
	}
   
	//매거진 상세보기
	@RequestMapping("mdetail")
	public ModelAndView mdetail(int cl_num) 
	{
		ModelAndView mav = new ModelAndView();
		Class classDetail = service.classDetail(cl_num);
		List<Comment> commentList = service.commentList(cl_num);
	    List<Class> classList = service.classList(3);
	    mav.addObject("classList",classList);
		mav.addObject("classDetail", classDetail);
		mav.addObject("commentList", commentList);
		return mav;
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