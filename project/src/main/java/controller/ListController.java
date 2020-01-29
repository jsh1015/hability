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
   public ModelAndView list() {
      ModelAndView mav = new ModelAndView();
      List<Class> classList = service.classList();
      mav.addObject("classList",classList); 
      return mav;
   }
   
   @RequestMapping("diystore")
   public ModelAndView list(Integer pageNum) {
      ModelAndView mav = new ModelAndView();
      List<Class> classList = service.classList();
      mav.addObject("classList",classList);
      return mav;
   }
   @RequestMapping("detail")
   public ModelAndView detail(int cl_num) {
      ModelAndView mav = new ModelAndView();
      Class classDetail = service.classDetail(cl_num);
      mav.addObject("classDetail",classDetail);
      mav.addObject(new Kit()); // 빈 객체를 전달
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