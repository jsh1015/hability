package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.PoohDao;

@Service
public class ShopService_pr {
	
	@Autowired 
	private PoohDao poohDao;

	public void po_addr_insert(Postaddr postaddr) {
		poohDao.po_addr_insert(postaddr);
	}
	
	public User getEmailid(String emailid) {
		return poohDao.selectEmailid(emailid);
	}
	
	public List<Postaddr> postList(String emailid) {
		return poohDao.postList(emailid);
	}

	public int postListCnt(String id) {
		System.out.println(id);
		return poohDao.postListCnt(id);
	}
	
	// 클래스의 옵션정보
	public Kit kitInfo(String kit_num, int cl_num) {
		return poohDao.kitInfo(kit_num, cl_num);
	}

	public void basketAdd(Kit kit) {
		poohDao.basketAdd(kit);
		
	}

	public void addrDelete(int po_num) {
		poohDao.addrDelete(po_num);
		
	}


}