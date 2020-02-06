package logic;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import dao.ListDao;
import dao.UserDao;


@Service //@Component + service 기능 : controller와 db의 중간역할
public class ShopService {
	@Autowired //내컨테이너안의 객체중 자료형이 ItemDao인 것을 주입 ->@service
	private UserDao userDao;
	@Autowired
	private ListDao listDao;


	public void userInsert(User user) {
		userDao.insert(user);
	}

	public void mileageInsert(String emailid, String mi_content, int mi_point) {
		int max = userDao.maxnum();
		userDao.mileageinsert(emailid, mi_content, mi_point, ++max);
	}
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

	public void userDelete(String userid) {
		userDao.delete(userid);
	}

	public Class classDetail(int cl_num) {
		return listDao.classDetail(cl_num);
	}
	
	public void orderInsert(Uorder uorder) {
		// TODO Auto-generated method stub
		
	}
	
	//게시물목록
	public List<Class> classList(Integer board_type) {
		return listDao.list(board_type);
	}
	
	//게시물 사진업로드
	private void uploadFileCreate(MultipartFile cl_imgUrl,MultipartFile cl_infoUrl,MultipartFile cl_storyUrl ,HttpServletRequest request, String path) {
		//picture : 업로드된 파일의 내용
		String orgFile = cl_imgUrl.getOriginalFilename();
		String orgFile2 = cl_infoUrl.getOriginalFilename();
		String orgFile3 = cl_storyUrl.getOriginalFilename();
		String uploadPath = request.getServletContext().getRealPath("/") + path; //파일을 만들어줌
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
		String uploadPath = request.getServletContext().getRealPath("/") + path; //파일을 만들어줌
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

	public void kitdelete(Integer cl_num, Integer kit_num) {
		listDao.kitdelete(cl_num,kit_num);
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
		
		

}
