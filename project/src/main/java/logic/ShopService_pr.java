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
		return poohDao.postListCnt(id);
	}
	
	// 클래스의 옵션정보
	public Kit kitInfo(int kit_num, int cl_num) {
		return poohDao.kitInfo(kit_num, cl_num);
	}

	public void addrDelete(int po_num) {
		poohDao.addrDelete(po_num);
	}

	public void addrUpdate(Postaddr postaddr) {
		poohDao.addrUpdate(postaddr);
	}

	public void basketAdd(int kit_num, int cl_num, int lastcount, String emailid) {
		poohDao.basketAdd(kit_num, cl_num, lastcount, emailid);
		
	}

	public List<Basket> basketList(String emailid) {
		List<Basket> list = poohDao.basketList(emailid);
		return list;
	}

	public int basketListCnt(String emailid) {
		return poohDao.basketListCnt(emailid);
	}

	public void basketDelete(int bindex) {
		poohDao.basketDelete(bindex);
	}

}
