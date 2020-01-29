package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

	public List<Class> classList() {
		return listDao.list();
	}

}
