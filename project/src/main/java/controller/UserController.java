package controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import exception.LoginException;
import logic.Postaddr;
import logic.ShopService;
import logic.ShopService_pr;
import logic.User;

@Controller //@Component + Controller : 객체를 만들고 컨트롤러의 기능까지 같이 수행
@RequestMapping("user") //user/xxx.shop
public class UserController {
	@Autowired
	private ShopService service;
	
	@Autowired
	private ShopService_pr service_pr;
	
	@GetMapping("*")
	public String form(Model model) {
		model.addAttribute(new User());
		return null;
	}
	@PostMapping("userEntry")
	public ModelAndView userEntry(@Valid User user, BindingResult bresult, HttpSession session) throws Exception{
		ModelAndView mav = new ModelAndView();
		if(bresult.hasErrors()) {
			bresult.reject("error.input.user");
			mav.getModel().putAll(bresult.getModel());
			return mav;
		}
		//useraccount 테이블에 내용 등록. 뷰단은 login.jsp로 이동
		try {
			service.userInsert(user);
			service.mileageInsert(user.getEmailid(), "회원가입 포인트", 1000);
			service.mileageupdate(user.getEmailid());
			User dbUser = service.getUser(user.getEmailid());
			session.setAttribute("loginUser",dbUser);
			mav.setViewName("redirect:main.shop");
			// mav.setViewName("user/login"); //redirect 를 사용하면 아이디값이 들어가지 않음
		}catch(DataIntegrityViolationException e) {
			e.printStackTrace();
			bresult.reject("error.duplicate.user");
		}
		return mav;
	}
	@PostMapping("login")
	public ModelAndView login(@Valid User user,BindingResult bresult,HttpSession session) throws Exception{
		ModelAndView mav = new ModelAndView();
		try {
			if(user.getEmailid() == null || user.getEmailid().isEmpty())
			{
				throw new LoginException("아이디를 확인해주세요","");				
			}
			User dbUser = service.getUser(user.getEmailid());
			if(user.getPass() == null || user.getPass().isEmpty())
			{
				throw new LoginException("비밀번호를 확인해주세요","");				
			}
			else if(!dbUser.getEmailid().equals(user.getEmailid()) || !dbUser.getPass().equals(user.getPass())) {
				throw new LoginException("아이디/비밀번호를 확인해주세요","");
			}
			else {
				session.setAttribute("loginUser",dbUser);
				mav.setViewName("redirect:main.shop");
			}
		}catch(EmptyResultDataAccessException e) {
			//e.printStackTrace();
			bresult.reject("error.login.emailid");
		}
		return mav;
	}

	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:main.shop";
	}
	
	@RequestMapping("main") //UserLoginAspect 클래스에 해당하는 핵심로직
	public String checkmain() { //session을 받지 않으면 로그인안한사람도 접근가능
		return "user/main";
	}
	
	//로그인 검증, (로그인 정보 != 파라미터정보 접근 불가, admin은 가능)
	@GetMapping("mypage")
	public ModelAndView page(String emailid,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		User user = service.getUser(emailid);
		mav.addObject("user", user);
		mav.addObject(new Postaddr()); // 빈 객체를 전달

		// 등록한 배송지 목록 조회
		List<Postaddr> postList = service_pr.postList(user.getEmailid());
		System.out.println("user.getEmailid() = " + user.getEmailid());
		mav.addObject("postList", postList);

		// 배송지 개수
		int postListCnt = service_pr.postListCnt(user.getEmailid());
		System.out.println(postListCnt);
		mav.addObject("postListCnt", postListCnt);

		return mav;
	}
	
	//delete.shop과 update.shop에서만 사용할 수 있게 수정 : * 는 상관없이 모두 사용
	@GetMapping(value= {"update","delete"}) //회원정보수정화면,탈퇴확인화면
	public ModelAndView checkview(String id,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User user = service.getUser(id);
		mav.addObject("user", user);
		return mav;
	}
	
	@PostMapping("update")//회원정보 수정 눌렀을시
	public ModelAndView checkupdate(@Valid User user, BindingResult bresult,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if(bresult.hasErrors()) {
			bresult.reject("error.input.user");
			return mav;
		}
		//비밀번호 검증 : 입력된 비밀번호 , db에 등록된 비밀번호 비교
		// 일치:update
		// 불일치:메세지를 유효성출력으로 화면에 출력
		User loginUser = (User)session.getAttribute("loginUser");//admin인지 확인하기 위해
		if(!user.getPass().equals(loginUser.getPass())){
			bresult.reject("error.login.password");
			return mav;
		}
		try{
			service.userupdate(user);
			mav.setViewName("redirect:mypage.shop?id="+user.getEmailid());
			if(!loginUser.getEmailid().equals("admin")) {
				session.setAttribute("loginUser", user); //업데이트 했을때 login정보도 바꿔줌
			}
		}catch(Exception e) {
			e.printStackTrace();
			bresult.reject("error.user.update");
		}
		return mav;
	}
	
	//관리자도 강제탈퇴가능해야함, 유효성 검증 하지않았음
	@PostMapping("delete")//		 user를 받아와도 되고, String id, String password로 받아와도 됨
	public ModelAndView checkdelete(User user , HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User loginUser = (User)session.getAttribute("loginUser");
		if(!user.getPass().equals(loginUser.getPass())){
			throw new LoginException("비밀번호가 틀립니다.","delete.shop?id="+user.getEmailid());
		}
		try {
			service.userDelete(user.getEmailid());
			if(loginUser.getEmailid().equals("admin")) {
				mav.setViewName("redirect:/admin/list.shop");
			}else {
				session.invalidate();
				mav.addObject("msg",user.getEmailid()+"회원님. 탈퇴 되었습니다.");
				mav.addObject("url","login.shop");
				mav.setViewName("alert");
			}
		}catch(Exception e) {
			e.printStackTrace();
			throw new LoginException("회원 탈퇴시 오류가 발생했습니다. 전산부 연락 요망","delete.shop?id="+user.getEmailid());
		}
		return mav;
	}
}
