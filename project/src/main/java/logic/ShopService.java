package logic;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import dao.ListDao;
import dao.OrderDao;
import dao.UserDao;


@Service //@Component + service 기능 : controller와 db의 중간역할
public class ShopService {
	@Autowired //내컨테이너안의 객체중 자료형이 ItemDao인 것을 주입 ->@service
	private UserDao userDao;
	@Autowired
	private ListDao listDao;
	@Autowired
	private OrderDao orderDao;


	// 회원 등록
	public void userInsert(User user) {
		userDao.insert(user);
	}
	
	// naver api 회원 등록
	public void naver_insert(String emailid, String name, String nickname, String profile_image) 
	{
		userDao.naver_insert(emailid, name, nickname, profile_image);
	}

	// kakao api 회원 등록
	public void kakaoInsert(String emailid, String nickname, String userimg) 
	{
		userDao.kakaoinsert(emailid, nickname, userimg);
		
	}

	// 마일리지 적립, 사용 등 마일리지 테이블에 등록
	public void mileageInsert(String emailid, String mi_content, int mi_point, int type, int od_num) {
		int max = userDao.maxnum(emailid);
		userDao.mileageinsert(emailid, mi_content, mi_point, type, ++max, od_num);
	}

	// 회원 마일리지 정보 갱신(마일리지 내역 변경시 마다 사용해야 함)
	public void mileageupdate(String emailid) {
		int sum = userDao.total_point(emailid);
		int use = userDao.use_point(emailid);
		int mileage = sum - use;
		userDao.mileageupdate(mileage, emailid);
		
	}

	public User getUser(String emailid) {
		return userDao.selectOne(emailid);
	}
	public void userupdate(User user) {
		userDao.update(user);
	}

	public Class classDetail(int cl_num) {
		return listDao.classDetail(cl_num);
	}
	
	//게시물목록
	public List<Class> classList(Integer board_type,Integer cl_category) {
		return listDao.list(board_type,cl_category);
	}
	
	//게시물 사진업로드
	private void uploadFileCreate(MultipartFile cl_imgUrl,MultipartFile cl_infoUrl,MultipartFile cl_storyUrl ,HttpServletRequest request, String path) {
		//picture : 업로드된 파일의 내용
		String orgFile = cl_imgUrl.getOriginalFilename();
		String orgFile2 = cl_infoUrl.getOriginalFilename();
		String orgFile3 = cl_storyUrl.getOriginalFilename();
		String uploadPath = "/project/" + path; //파일을 만들어줌
		File fpath = new File(uploadPath);
		if(!fpath.exists()) fpath.mkdirs(); //해당 path가없으면 생성
		try {
			//picture에 있는 것 파일로 생성
			cl_imgUrl.transferTo(new File(uploadPath + orgFile));
			cl_infoUrl.transferTo(new File(uploadPath + orgFile2));
			cl_storyUrl.transferTo(new File(uploadPath + orgFile3));
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	//게시물등록
	public void boardwrite(Class classes,HttpServletRequest request) {
		//첨부파일이 존재하는 경우
		if(classes.getCl_imgUrl()!=null && !classes.getCl_imgUrl().isEmpty() &&classes.getCl_infoUrl()!=null && !classes.getCl_infoUrl().isEmpty()
					&& classes.getCl_storyUrl()!=null && !classes.getCl_storyUrl().isEmpty() ) {
			uploadFileCreate(classes.getCl_imgUrl(),classes.getCl_infoUrl(),classes.getCl_storyUrl(), request, "img/");
			//업로드될 파일 이름을 설정
			classes.setCl_img(classes.getCl_imgUrl().getOriginalFilename());
			classes.setCl_info(classes.getCl_infoUrl().getOriginalFilename());
			classes.setCl_story(classes.getCl_storyUrl().getOriginalFilename());
				
		}

		int max = listDao.maxnum();
		classes.setCl_num(++max);
		listDao.insert(classes);
	}
	//키트사진 업로드
	private void kuploadFileCreate(MultipartFile kit_imgUrl,HttpServletRequest request, String path) {
		//picture : 업로드된 파일의 내용
		String orgFile = kit_imgUrl.getOriginalFilename();
		String uploadPath = "/project/" + path; //파일을 만들어줌
		File fpath = new File(uploadPath);
		if(!fpath.exists()) fpath.mkdirs(); //해당 path가없으면 생성
		try {
			//picture에 있는 것 파일로 생성
			kit_imgUrl.transferTo(new File(uploadPath + orgFile));
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//키트등록
	public void kitinsert(Kit kit,Integer cl_num,HttpServletRequest request) {
		if(kit.getKit_imgUrl()!=null && !kit.getKit_imgUrl().isEmpty()) {
		kuploadFileCreate(kit.getKit_imgUrl(), request, "img/");
		//업로드될 파일 이름을 설정
		kit.setKit_img(kit.getKit_imgUrl().getOriginalFilename());
	}
		int num = listDao.kitnum(cl_num);
		kit.setKit_num(++num);
		kit.setCl_num(cl_num);
		listDao.kitinsert(kit);
	}
	
	//게시물 수정
	public void boardedit(Class classes, HttpServletRequest request) {
		if(classes.getCl_imgUrl()!=null && !classes.getCl_imgUrl().isEmpty() &&classes.getCl_infoUrl()!=null && !classes.getCl_infoUrl().isEmpty()
				&& classes.getCl_storyUrl()!=null && !classes.getCl_storyUrl().isEmpty() ) {
			uploadFileCreate(classes.getCl_imgUrl(),classes.getCl_infoUrl(),classes.getCl_storyUrl(), request, "img/");
			//업로드될 파일 이름을 설정
			classes.setCl_img(classes.getCl_imgUrl().getOriginalFilename());
			classes.setCl_info(classes.getCl_infoUrl().getOriginalFilename());
			classes.setCl_story(classes.getCl_storyUrl().getOriginalFilename());
		}
		listDao.update(classes);
	}
	
	public Class getboard(Integer cl_num) {
		return listDao.selectnum(cl_num);
	}
	//게시물삭제
	public void boarddel(Class classes) {
		listDao.delete(classes);
	}

	
	//키트삭제
	public void kitdelete(Integer cl_num, Integer kit_num) {
		listDao.kitdelete(cl_num,kit_num);
	}
	//키트 목록
	public List<Kit> kitList(Integer cl_num) {
		return listDao.kitList(cl_num);
	}
	//보관함확인
	public String likeselect(Integer cl_num,String emailid) {
		return listDao.lselect(cl_num,emailid);
	}
    //보관함 등록
	public void likeinsert(Ulike ul) {
		listDao.linsert(ul);
	}
	//보관함 삭제
	public void likedelete(Ulike ul) {
		listDao.ldelete(ul);
	}
	
	//영상 업로드
	private void vuploadFileCreate(MultipartFile v_fileUrl,HttpServletRequest request, String path) {
		//picture : 업로드된 파일의 내용
		String orgFile = v_fileUrl.getOriginalFilename();
		String uploadPath = "/project/" + path; //파일을 만들어줌
		File fpath = new File(uploadPath);
		if(!fpath.exists()) fpath.mkdirs(); //해당 path가없으면 생성
		try {
			//picture에 있는 것 파일로 생성
			v_fileUrl.transferTo(new File(uploadPath + orgFile));
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//영상 추가
	public void videoinsert(Video video, Integer cl_num, HttpServletRequest request) {
		if(video.getV_fileUrl()!=null && !video.getV_fileUrl().isEmpty()) {
			vuploadFileCreate(video.getV_fileUrl(), request, "img/");
		//업로드될 파일 이름을 설정
		video.setV_file(video.getV_fileUrl().getOriginalFilename());
	}
		int num = listDao.videonum(cl_num);
		video.setV_num(++num);
		video.setCl_num(cl_num);
		listDao.videoinsert(video);
	}
	//영상삭제
	public void vdelete(Integer cl_num, Integer v_num) {
		listDao.videodelete(cl_num,v_num);
	}
	//내클래스 목록
	public List<Orderlist> orderlist(User emailid) {
		return userDao.odlist(emailid);
	}
	//해당비디오 목록
	public List<Video> vlist(Integer cl_num) {
		return userDao.vlist(cl_num);
	}
	//선택한 비디오 출력
	public String cv(Integer v_num) {
		return userDao.clickvideo(v_num);
	}

	public Class getclass(Integer cl_num) {
		return listDao.getclass(cl_num);
	}


	//회원목록
		public List<User> userList() {
			return userDao.userlist();
		}

		public User userdetail(String emailid) {
			return userDao.selectOne(emailid);
		}

		public List<Kit> kitList(int cl_num) {
			return listDao.kitList(cl_num);
		}

		// 마일리지 적립 내역 합계
		public int total_point(String emailid) {
			return userDao.total_point(emailid);
		}

		// 마일리지 사용 내역 합계
		public int use_point(String emailid) {
			return userDao.use_point(emailid);
		}

		// 해당 회원의 마일리지 내역
		public List<Mileage> mileagelist(String emailid) {
			return userDao.mileagelist(emailid);
		}

		public List<Comment> commentList(Integer cl_num,Integer cm_type) {
			return listDao.commentList(cl_num,cm_type);
		}

		public void commentinsert(int cl_num, int i, String cm_content, String emailid) {
			int cm_num = listDao.cm_num();
			listDao.commentinsert(cl_num, i, cm_content, emailid, ++cm_num);			
		}

	//주문/배송 정보 입력
		public void orderInsert(Uorder uorder) {
			orderDao.orderinsert(uorder);
		}
	//주문번호 최대
		public int ordermaxnum() {
			return orderDao.maxnum();
		}
	//주문목록 등록
		public void odlistInsert(Orderlist odlist) {
			orderDao.odlistinsert(odlist);
		}
	//주문/배송 정보 select
		public Uorder orderSelect(int od_num) {
			return orderDao.orderselect(od_num);
		}
	//주문목록 select
		public Orderlist odlistSelect(int od_num, int cl_num) {
			return orderDao.odlistselect(od_num,cl_num);
		}
		public List<Orderlist> order_odlist(int od_num) {
			return orderDao.order_odlist(od_num);
		}
	//주문 클래스 정보 select
		public Class orderclasslist(int cl_num) {
			return orderDao.orderclasslist(cl_num);
		}

	//회원삭제
		public void userDelete(String emailid) {
			userDao.delete(emailid);
		}
	//회원삭제전 확인
		public void userinfo(String emailid) {
			List<Mileage> mile = userDao.mileageselect(emailid);
			List<Postaddr> post = userDao.postaddrselect(emailid);
			List<Qna> qna = userDao.qnaselect(emailid);
			List<Basket> basket = userDao.basketselect(emailid);
//			List<Orderlist> odlist = userDao.odlistselect(emailid);
			List<Uorder> order = userDao.orderselect(emailid);
			if(mile!=null) {
				userDao.usermileagedelete(emailid);
			}
			if(post!=null) {
				userDao.userpostaddrdelete(emailid);
			}
			if(qna!=null) {
				userDao.qnaselectdelete(emailid);
			}
			if(basket!=null) {
				userDao.basketselectdelete(emailid);
			}
//			if(odlist!=null) {
//				userDao.odlistdelete(emailid);
//			}
			if(order!=null) {
				for(int i=0;i<order.size();i++) {
					userDao.odlistdelete(order.get(i).getOd_num());
				}
				userDao.orderdelete(emailid);
			}
			
		}
		
		//댓글,후기 삭제
		public void cmdelete(Integer cm_num) {
			listDao.cmdelete(cm_num);
		}
		
		//좋아요 취미,diy목록
		public List<Ulike> likelist(String emailid) {
			return userDao.likelist(emailid);
		} 
		//좋아요 매거진 목록
		public List<Ulike> likemlist(String emailid) {
			return userDao.likemlist(emailid);
		}

		public int myclasscnt(User emailid) {
			return userDao.myclasscnt(emailid);
		}

		//공지사항등록
		public void noticewrite(Notice notice) {

			int max = listDao.no_max();
			notice.setNo_num(++max);
			listDao.noticewrite(notice);
		}
		
		// 공지 목록
		public List<Notice> noticeList() {
			return listDao.noticeList();	
		}

		public int commentcount(int cl_num) {
			return listDao.commentcount(cl_num);
		}
		// 탈퇴
	/*
	 * public void uout(String emailid) { userDao.uout(emailid); }
	 */

		public List<Comment> colist(int cm_type) {
			return listDao.colist(cm_type);
		}

		public List<Comment> magazinelist(int cl_num) {
			return listDao.magazinelist(cl_num);
		}

		public List<Uorder> userorderSelect(String emailid) {
			return userDao.orderselect(emailid);
		}

}
