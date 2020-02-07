package controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.Class;
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
   
   @RequestMapping("magazine")
   public String magazine() {
      return "list/magazine";
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
}