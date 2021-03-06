package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.codehaus.jackson.JsonNode;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.scribejava.core.model.OAuth2AccessToken;

import exception.LoginException;
import logic.Class;
import logic.Comment;
import logic.Kit;
import logic.Mileage;
import logic.Notice;
import logic.Orderlist;
import logic.Postaddr;
import logic.ShopService;
import logic.ShopService_pr;
import logic.Ulike;
import logic.Uorder;
import logic.User;
import logic.Video;

@Controller //@Component + Controller : 객체를 만들고 컨트롤러의 기능까지 같이 수행
@RequestMapping("user") //user/xxx.shop
public class UserController {
	@Autowired
	private NaverController naverController;

	private String apiResult = null;
	@Autowired
	private ShopService service;
	
	@Autowired
	private ShopService_pr service_pr;
	
	@GetMapping("*")
	public String form(Model model) {
		model.addAttribute(new User());
		return null;
	}
	// 회원 등록
	@PostMapping("userEntry")
	public ModelAndView userEntry(@Valid User user, BindingResult bresult, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		if (bresult.hasErrors()) {
			bresult.reject("error.input.user");
			mav.getModel().putAll(bresult.getModel());
			return mav;
		}
		// useraccount 테이블에 내용 등록. 뷰단은 login.jsp로 이동
		try {
			service.userInsert(user);
			// 회원 가입 적립금 지급(아이디, 내역, 포인트, 타입(1: 적립, 2: 사용)
			service.mileageInsert(user.getEmailid(), "회원가입 포인트", 1000, 1,0);
			// 회원 적립금 내역 업데이트
			service.mileageupdate(user.getEmailid());
			User dbUser = service.getUser(user.getEmailid());

			// 회원 가입 성공 후 자동 로그인 처리
			session.setAttribute("loginUser", dbUser);
			mav.setViewName("redirect:../user/main.shop");
			// mav.setViewName("user/login"); //redirect 를 사용하면 아이디값이 들어가지 않음
		} catch (DataIntegrityViolationException e) {
			e.printStackTrace();
			bresult.reject("error.duplicate.user");
		}
		return mav;
	}

	@RequestMapping("reviewWrite")
	public ModelAndView reviewWrite(User user, BindingResult bresult, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		return mav;
	}

	@RequestMapping(value = { "login.shop", "join.shop" }, method = RequestMethod.GET)
	public String login(HttpSession session) {
		String naverAuthUrl = NaverController.getAuthorizationUrl(session);
		String kakaoUrl = KakaoController.getAuthorizationUrl(session);
		session.setAttribute("naver_url", naverAuthUrl);
		session.setAttribute("kakao_url", kakaoUrl);
		return null;
	}

	@RequestMapping("kakao_callback")
	public String kakao_callback(@RequestParam String code, HttpSession session) throws IOException, ParseException
	{
		ModelAndView mav = new ModelAndView();
		// 결과값을 node에 담아줌
		JsonNode node = KakaoController.getAccessToken(code);
		// accessToken에 사용자의 로그인한 모든 정보가 들어있음
		JsonNode accessToken = node.get("access_token");
		// 사용자의 정보
		JsonNode userInfo = KakaoController.getKakaoUserInfo(accessToken);
		String emailid = null;
		String nickname = null;
		String userimg = null;
		// 유저정보 카카오에서 가져오기 Get properties
		JsonNode properties = userInfo.path("properties");
		JsonNode kakao_account = userInfo.path("kakao_account");
		emailid = kakao_account.path("email").asText();
		nickname = properties.path("nickname").asText();
		userimg = properties.path("profile_image").asText();
		mav.addObject("result", apiResult);
		if (service.getUser(emailid) == null) {
			service.kakaoInsert(emailid, nickname, userimg);
			// 회원 가입 적립금 지급
			service.mileageInsert(emailid, "회원가입 포인트", 1000, 1,0);
			// 회원 적립금 내역 업데이트
			service.mileageupdate(emailid);
		}
		User dbUser = service.getUser(emailid);

		// 회원 가입 성공 후 자동 로그인 처리
		session.setAttribute("loginUser", dbUser);
		mav.setViewName("redirect:main.shop");
		return "/user/main";
	}

	@RequestMapping("naver_callback")
	public String naver_callback(@RequestParam String code, @RequestParam String state, HttpSession session) throws IOException, ParseException {
		ModelAndView mav = new ModelAndView();
		System.out.println("여기는 callback");
		OAuth2AccessToken oauthToken;
		oauthToken = naverController.getAccessToken(session, code, state);
		apiResult = naverController.getUserProfile(oauthToken);
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(apiResult);
		JSONObject jsonObj = (JSONObject) obj;
		JSONObject response_obj = (JSONObject) jsonObj.get("response");
		String nickname = (String) response_obj.get("nickname");
		String emailid = (String) response_obj.get("email");
		String name = (String) response_obj.get("name");
		String profile_image = (String) response_obj.get("profile_image");
		session.setAttribute("nickname", nickname);
		mav.addObject("result", apiResult);
		if (service.getUser(emailid) == null) {
			service.naver_insert(emailid, name, nickname, profile_image);
			// 회원 가입 적립금 지급
			service.mileageInsert(emailid, "회원가입 포인트", 1000, 1,0);
			// 회원 적립금 내역 업데이트
			service.mileageupdate(emailid);
		}
		User dbUser = service.getUser(emailid);

		// 회원 가입 성공 후 자동 로그인 처리
		session.setAttribute("loginUser", dbUser);
		mav.setViewName("redirect:main.shop");
		return "/user/main";
	}

	@PostMapping("login")
	   @ResponseBody //리턴값을 view를 통해서 출력하지 않고 body에 사용
	   public String login(@Valid User user, BindingResult bresult, HttpSession session) throws Exception{
	      try {
				User dbUser = service.getUser(user.getEmailid());
			if(dbUser==null) {
				throw new LoginException("등록된 정보가 없습니다.","../user/main.shop");
			}else if(!dbUser.getEmailid().equals(user.getEmailid()) || !dbUser.getPass().equals(user.getPass())) {
	            throw new LoginException("아이디/비밀번호가 틀렸습니다.","../user/main.shop");
	        }else {
	        	List<Uorder> order = service.userorderSelect(dbUser.getEmailid());
				if(order!=null) {
					session.setAttribute("order",order);
				}
	            session.setAttribute("loginUser",dbUser);
	            session.setAttribute("userimg", dbUser.getUserimg());
	            return "<script>location.href=document.referrer;</script>";
	        }
	      }catch(EmptyResultDataAccessException e) {
	         //e.printStackTrace();
	         bresult.reject("error.login.emailid");
	      }
	      return null;
	   }

	// 로그아웃
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:main.shop";
	}
	
	@RequestMapping("main")
	public ModelAndView newClassList() {
		ModelAndView mav = new ModelAndView();
		Integer cl_category=0;
		List<Class> classList = service.classList(1,cl_category);
		mav.addObject("classList",classList);
		
		List<Class> diyList = service.classList(2,cl_category);
		mav.addObject("diyList",diyList);
		return mav;
	}

	//로그인 검증, (로그인 정보 != 파라미터정보 접근 불가, admin은 가능)
	   @RequestMapping("mypage")
	   public ModelAndView page(String emailid, String m, HttpSession session) {
	      ModelAndView mav = new ModelAndView();
	      
	      User user = service.getUser(emailid);
	      
	      int total_point = service.total_point(emailid);
	      int use_point = service.use_point(emailid);
	      int now_point = total_point - use_point;
	      List<Mileage> mileagelist = service.mileagelist(emailid);
	      List<Comment> colist = service.colist(2);
	      List<Comment> magazinelist = service.magazinelist(4);
	      
	      mav.addObject("type", m);
	      mav.addObject("user", user);
	      mav.addObject("total_point", total_point);
	      mav.addObject("use_point", use_point);
	      mav.addObject("now_point", now_point);
	      mav.addObject("mileagelist", mileagelist);
	      mav.addObject("colist", colist);
	      mav.addObject("magazinelist", magazinelist);
	      mav.addObject(new Postaddr()); // 빈 객체를 전달

	      // 등록한 배송지 목록 조회
	      List<Postaddr> postList = service_pr.postList(user.getEmailid());
	      System.out.println("mypage emailid = " + user.getEmailid());
	      mav.addObject("postList", postList);

	      // 배송지 개수
	      int postListCnt = service_pr.postListCnt(user.getEmailid());
	      System.out.println("배송지 개수 = "+postListCnt);
	      mav.addObject("postListCnt", postListCnt);
	      
	      int lastprice =0;
	      
	      // 주문 목록 조회
	      // 관리자일 경우 모든 내역 조회 가능
	      int od_num =0;
	      List<Uorder> orderList = service_pr.orderList(emailid, od_num);
	      for(Uorder oneorder : orderList) {
	         // 주문리스트 1개에서 주문번호를 가지고 상품 리스트를 만들어
	         List<Orderlist> itemList = service_pr.orderClassList(oneorder.getOd_num());
	         for(Orderlist oneitem : itemList) {
	            // 주문내역 1개에 해당하는 class 조회
	            Class cls = service.classDetail(oneitem.getCl_num());
	            Kit kit = service_pr.kitInfo(oneitem.getKit_num(), oneitem.getCl_num());
	            oneitem.setCls(cls);
	            oneitem.setKit(kit);
	            
	            lastprice += kit.getKit_price() * oneitem.getCount();
	         }
	         oneorder.setOrderlist(itemList);
	         // Sale에 있는 User에 사용자정보(값) 넣어주기
	         try {
	            User username = service.getUser(oneorder.getEmailid());
	            oneorder.setUser(username);
	         } catch (LoginException e) {
	            // 탈퇴한 회원이 있을 경우
	         }
	      }
	      mav.addObject("orderList", orderList);
	      mav.addObject("lastprice", lastprice);
	      
	      // 주문 개수
	      int orderListCnt = service_pr.orderListCnt(user.getEmailid());
	      System.out.println("주문 개수 = " +orderListCnt);
	      mav.addObject("orderListCnt", orderListCnt);
	      
		 //취미보관함
			List<Ulike> ul = service.likelist(emailid);
			for(int i=0;i<ul.size();i++) {
				Class cl = service.classDetail(ul.get(i).getCl_num());
				ul.get(i).setCl_title(cl.getCl_title());
				ul.get(i).setCl_img(cl.getCl_img());
				ul.get(i).setTeacher(cl.getTeacher());
			}
			mav.addObject("ul",ul);
			
			//매거진보관함
			List<Ulike> mul = service.likemlist(emailid);
			for(int i=0; i<mul.size(); i++) {
				Class cla = service.classDetail(mul.get(i).getCl_num());
				mul.get(i).setCl_title(cla.getCl_title());
				mul.get(i).setCl_img(cla.getCl_img());
				mul.get(i).setTeacher(cla.getTeacher());
				mul.get(i).setCl_content(cla.getCl_content());
				mul.get(i).setTime(cla.getCl_date());
			}
			mav.addObject("mul",mul);

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
	public ModelAndView checkupdate(String emailid, String nickname, String name , HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User user = service.getUser(emailid);
		user.setNickname(nickname);
		user.setName(name);
		service.userupdate(user);
		session.setAttribute("loginUser", user);
		mav.setViewName("redirect:/user/mypage.shop?emailid="+ emailid);
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
	
	//내 클래스 목록
	@RequestMapping("myClass")
	public ModelAndView myclass(User user,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User loginUser = (User)session.getAttribute("loginUser");
		List<Orderlist> odlist = service.orderlist(loginUser);
		List<Class> cls = new ArrayList<>();
		for(int i=0;i<odlist.size();i++){
			cls.add(service.getboard(odlist.get(i).getCl_num()));
		}
		mav.addObject("cls",cls);
		return mav;
	}
	
	//내 클래스 상세보기
	@RequestMapping("mycdetail")
	public ModelAndView mycdetail(Integer cl_num,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<Video> vlist = service.vlist(cl_num);
		Class c = service.getclass(cl_num);
		mav.addObject("vlist",vlist);
		mav.addObject("c",c);
		return mav;
	}
	
	@RequestMapping("clickvideo")
	@ResponseBody
	public String cvideo(Integer v_num) {
		String v_file = service.cv(v_num);
		System.out.println(v_file);
		return v_file;
	}
	// 고객센터
	@RequestMapping("customer") //게시물 목록
	public ModelAndView customer() {
		ModelAndView mav = new ModelAndView();
	    List<Notice> noticeList = service.noticeList();
	    mav.addObject("noticeList",noticeList);
		return mav;
	}

}
