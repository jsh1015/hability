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

	public int orderListCnt(String emailid) {
		return poohDao.orderListCnt(emailid);
	}

	public List<Uorder> orderList(String emailid, int od_num) {
		return poohDao.orderList(emailid, od_num);
	}
	
	// 1개의 주문목록에 대한 클래스 리스트
	public List<Orderlist> orderClassList(int od_num) {
		return poohDao.orderClassList(od_num);
	}

	public void updateDelivery(int od_num, int deli_val) {
		poohDao.updateDelivery(od_num, deli_val);
	}

	public void orderCancle_orderlist(int od_num) {
		poohDao.orderCancle_orderlist(od_num);
	}

	public void orderCancle_uorder(int od_num) {
		poohDao.orderCancle_uorder(od_num);
	}

}
