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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import logic.Basket;
import logic.Class;
import logic.Kit;
import logic.Postaddr;
import logic.ShopService;
import logic.ShopService_pr;
import logic.User;

@Controller
public class PoohController {
	@Autowired
	private ShopService service;
	@Autowired
	private ShopService_pr service_pr;
		
	@PostMapping("user/po_addr")
	public ModelAndView postaddr(Postaddr postaddr, BindingResult bresult, HttpSession session) throws Exception{
		User loginUser = (User)session.getAttribute("loginUser");
		ModelAndView mav = new ModelAndView("user/mypage"); // po_addr이 없으니까 지정해줘

		try {
			System.out.println("po_addr emailid = "+loginUser.getEmailid());
			postaddr.setEmailid(loginUser.getEmailid());
			service_pr.po_addr_insert(postaddr);
			
			mav.setViewName("redirect:mypage.shop?emailid="+loginUser.getEmailid());
		} catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	@PostMapping("user/po_addr_update")
	public ModelAndView po_addr_update(Postaddr postaddr, int po_num, HttpSession session) {
		User loginUser = (User)session.getAttribute("loginUser");
		ModelAndView mav = new ModelAndView("user/mypage"); // po_addr이 없으니까 지정해줘
		
		System.out.println("po_update po_num = " + po_num);
		System.out.println("po_update postaddr = " + postaddr);

		try {
//			postaddr.setEmailid(loginUser.getEmailid());
//			postaddr.setPo_num(po_num);
			service_pr.addrUpdate(postaddr);
			mav.setViewName("redirect:mypage.shop?emailid="+loginUser.getEmailid());
		} catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	// 장바구니 삭제
	@RequestMapping("order/basketDelete")
	public ModelAndView basketDelete(int bindex, HttpSession session) {
		User loginUser = (User)session.getAttribute("loginUser");
		ModelAndView mav = new ModelAndView("order/basketList");
		service_pr.basketDelete(bindex);
		mav.setViewName("redirect:basketView.shop?emailid="+loginUser.getEmailid());
		return mav;
	}
	
	@RequestMapping("order/basketView")
	public ModelAndView basketList(String emailid, HttpSession session) {
		ModelAndView mav = new ModelAndView("order/basketList");
		
		User user = service.getUser(emailid);
		mav.addObject("user", user);
		mav.addObject(new Basket());
		
		// 장바구니 개수
		int basketListCnt = service_pr.basketListCnt(user.getEmailid());
		System.out.println("장바구니 개수 = "+basketListCnt);
		mav.addObject("basketListCnt", basketListCnt);

		// 목록 조회
		// 리스트만 가지고는 view단에 내용을 보여줄 수 없어
		List<Basket> basketList = service_pr.basketList(user.getEmailid());
		long sum = 0;
        for(Basket b : basketList) {
        	b.setCls(service.classDetail(b.getCl_num()));
        	b.setKit(service_pr.kitInfo(b.getKit_num(), b.getCl_num()));
        	b.setTotal(b.getKit().getKit_price() * b.getCount());
        	
        	sum += b.getTotal();
        }
       
		System.out.println("basketView 장바구니 리스트 = "+basketList);
		mav.addObject("basketList", basketList);
		mav.addObject("sum", sum);
		
		return mav;
	}
	
	// ajax 장바구니
	@RequestMapping("ajax/basketAddCheck")
	public ModelAndView basketAddCheck(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		int cl_num = Integer.parseInt(request.getParameter("cl_num")); // data에서 넘어온 cl_num값
		int kit_num = Integer.parseInt(request.getParameter("kit_num"));
		int lastcount = Integer.parseInt(request.getParameter("lastcount"));
		String emailid = request.getParameter("emailid");
		
		System.out.println("ajax cl_num = " + cl_num);
		System.out.println("ajax kit_num = " + kit_num);
		System.out.println("ajax lastcount = " + lastcount);
		System.out.println("ajax emailid = " + emailid);

//		mav.addObject("cl_num", cl_num); // ajax으로 넘어감
//		mav.addObject("kit_num", kit_num);
//		mav.addObject("lastcount", lastcount);
//		mav.addObject("emailid", emailid);
		
		// 선택된 상품 객체 (클래스의 옵션)
		Kit kit = service_pr.kitInfo(kit_num, cl_num);
		System.out.println("장바구니 kit 정보 = " + kit);
		service_pr.basketAdd(kit.getKit_num(), cl_num, lastcount, emailid);
		return mav;
	}
	
	// ajax 배송지 삭제 모달
	@RequestMapping("ajax/addrDeleteModal")
	public ModelAndView addrDeleteModal(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		int po_num = Integer.parseInt(request.getParameter("po_num")); // 넘어온 값
		System.out.println("ajax po_num = " + po_num);
		mav.addObject("po_num", po_num); // ajax으로 넘어감
		return mav;
	}
	// 배송지 삭제
	@RequestMapping("user/addrDelete")
	public ModelAndView addrDelete(int po_num, HttpServletRequest request, HttpSession session) {
		User loginUser = (User)session.getAttribute("loginUser");
		ModelAndView mav = new ModelAndView("user/mypage"); // po_addr이 없으니까 지정해줘
		
		int po_num_requset = Integer.parseInt(request.getParameter("po_num")); // 넘어온 값
		System.out.println("삭제버튼 누르고 나서 po_num = " + po_num_requset);
		System.out.println("hidden으로 받아온 po_num = " + po_num);

		service_pr.addrDelete(po_num);
		mav.setViewName("redirect:mypage.shop?emailid="+loginUser.getEmailid());
		return mav;
	}
	// ajax 요청된 메서드
	@RequestMapping("ajax/optionModal")
	public ModelAndView optionModal(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		int cl_num = Integer.parseInt(request.getParameter("cl_num"));
		System.out.println("ajax = "+cl_num);
		
		mav.addObject("cl_num", cl_num); // ajax으로 넘어감
		return mav;
	}
}
