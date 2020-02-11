package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.PoohMapper;
import logic.Basket;
import logic.Kit;
import logic.Orderlist;
import logic.Postaddr;
import logic.Uorder;
import logic.User;
import exception.LoginException;


@Repository
public class PoohDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<>();
	
	public void po_addr_insert(Postaddr postaddr) {
		int po_num = sqlSession.getMapper(PoohMapper.class).max_po_num();
		
		param.clear();
		postaddr.setPo_num(++po_num);
		System.out.println("최종 postaddr : " + postaddr);
		// param에 넣으면, mapper에서 postaddr.으로 시작해서 다 붙여줘야함
//		param.put("postaddr", postaddr);
//		sqlSession.getMapper(PoohMapper.class).po_addr_insert(param);
		
		sqlSession.getMapper(PoohMapper.class).po_addr_insert(postaddr);
	}

	public User selectEmailid(String emailid) {
		param.clear();
		param.put("emailid", emailid);
		
		return sqlSession.getMapper(PoohMapper.class).selectEmailid(param).get(0);
	}

	public List<Postaddr> postList(String emailid) {
		param.clear();
		param.put("emailid", emailid);
		return sqlSession.getMapper(PoohMapper.class).postList(param);
	}

	public int postListCnt(String id) {
		param.clear();
		param.put("emailid", id);
		Integer postListCnt = sqlSession.getMapper(PoohMapper.class).postListCnt(param);
		return postListCnt;
	}

	public Kit kitInfo(int kit_num, int cl_num) {
		param.clear();
		param.put("kit_num", kit_num);
		param.put("cl_num", cl_num);
		return sqlSession.getMapper(PoohMapper.class).kitInfo(param);
	}

	public void addrDelete(int po_num) {
		sqlSession.getMapper(PoohMapper.class).addrDelete(po_num);		
	}

	public void addrUpdate(Postaddr postaddr) {
		sqlSession.getMapper(PoohMapper.class).addrUpdate(postaddr);		
	}

	public void basketAdd(int kit_num, int cl_num, int lastcount, String emailid) {
		int b_num = sqlSession.getMapper(PoohMapper.class).max_b_num();
		int b_num2 = ++b_num;
		// 매개변수는 순서에 맞춰서 들어가야함
		sqlSession.getMapper(PoohMapper.class).basketAdd(b_num2, kit_num, cl_num, lastcount, emailid);	
	}

	public List<Basket> basketList(String emailid) {
		param.clear();
		param.put("emailid", emailid);
		return sqlSession.getMapper(PoohMapper.class).basketList(param);
	}

	public int basketListCnt(String emailid) {
		param.clear();
		param.put("emailid", emailid);
		Integer basketListCnt = sqlSession.getMapper(PoohMapper.class).basketListCnt(param);
		return basketListCnt;
	}

	public void basketDelete(int bindex) {
		sqlSession.getMapper(PoohMapper.class).basketDelete(bindex);		
	}

	public int orderListCnt(String emailid) {
		param.clear();
		param.put("emailid", emailid);
		Integer orderListCnt = sqlSession.getMapper(PoohMapper.class).orderListCnt(param);
		return orderListCnt;
	}

	public List<Uorder> orderList(String emailid, int od_num) {
		param.clear();
		param.put("emailid", emailid);
		param.put("od_num", od_num);
		return sqlSession.getMapper(PoohMapper.class).orderList(param);
	}

	public List<Orderlist> orderClassList(int od_num) {
		param.clear();
		param.put("od_num", od_num);
		return sqlSession.getMapper(PoohMapper.class).orderClassList(param);
	}

	public void updateDelivery(int od_num, int deli_val) {
		param.clear();
		param.put("od_num", od_num);
		param.put("deli_val", deli_val);
		sqlSession.getMapper(PoohMapper.class).updateDelivery(param);
	}

	public void orderCancle_orderlist(int od_num) {
		param.clear();
		param.put("od_num", od_num);
		sqlSession.getMapper(PoohMapper.class).orderCancle_orderlist(param);
	}

	public void orderCancle_uorder(int od_num) {
		param.clear();
		param.put("od_num", od_num);
		sqlSession.getMapper(PoohMapper.class).orderCancle_uorder(param);
	}


}
