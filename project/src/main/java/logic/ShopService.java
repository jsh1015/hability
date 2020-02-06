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
	public List<Class> classList() {
		return listDao.list();
	}
	
	private void uploadFileCreate(MultipartFile picture, HttpServletRequest request, String path) {
		//picture : 업로드된 파일의 내용
		String orgFile = picture.getOriginalFilename();
		String uploadPath = request.getServletContext().getRealPath("/") + path; //파일을 만들어줌
		File fpath = new File(uploadPath);
		if(!fpath.exists()) fpath.mkdirs(); //해당 path가없으면 생성
		try {
			//picture에 있는 것 파일로 생성
			picture.transferTo(new File(uploadPath + orgFile));
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//게시물등록
	public void boardwrite(Class classes,HttpServletRequest request) {
		//첨부파일이 존재하는 경우
		if(classes.getCl_img()!=null && !classes.getCl_img().isEmpty()) {
			uploadFileCreate(classes.getCl_img(), request, "class/file/");
			//업로드될 파일 이름을 설정
			classes.setCl_imgUrl(classes.getCl_img().getOriginalFilename());
		}
		int max = listDao.maxnum();
		classes.setCl_num(++max);
		listDao.insert(classes);
	}
	
	//키트등록
	public void kitinsert(Kit kit,Integer cl_num,HttpServletRequest request) {
		int max = listDao.kitnum();
		kit.setKit_num(++max);
		kit.setCl_num(cl_num);
		listDao.kitinsert(kit);
	}

	public List<Kit> kitList(int cl_num) {
		return listDao.kitList(cl_num);
	}
	
	//회원목록
		public List<User> userList() {
			return userDao.userlist();
		}

		public User userdetail(String emailid) {
			return userDao.selectOne(emailid);
		}

}
