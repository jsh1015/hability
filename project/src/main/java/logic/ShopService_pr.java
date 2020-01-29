package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.PoohDao;

@Service //@Component + service 기능 : controller와 db의 중간역할
public class ShopService_pr {
	
	@Autowired //내 컨테이너안의 객체중 자료형이 PostDao인 것을 주입 ->@service
	private PoohDao poohDao;

	public void po_addr_insert(Postaddr postaddr, String emailid) {
		System.out.println(postaddr);
		System.out.println(emailid);
		poohDao.po_addr_insert(postaddr, emailid);
	}
	
	// emailid 조회
	public User getEmailid(String emailid) {
		return poohDao.selectEmailid(emailid);
	}
	
	// 배송지 목록
	public List<Postaddr> postList(String emailid) {
		return poohDao.postList(emailid);
	}

	public int postListCnt(String id) {
		System.out.println(id);
		return poohDao.postListCnt(id);
	}
}
