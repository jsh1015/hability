package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.PoohMapper;
import logic.Postaddr;
import logic.User;
import exception.LoginException;


@Repository
public class PoohDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<>();
	
	public void po_addr_insert(Postaddr postaddr, String emailid) {
		// 배송지 등록 번호
		int po_num = sqlSession.getMapper(PoohMapper.class).max_po_num();
		System.out.println(po_num);
		System.out.println(emailid);

		param.clear();
		postaddr.setPo_num(++po_num);
		param.put("emailid", emailid);
		param.put("postaddr", postaddr);
		sqlSession.getMapper(PoohMapper.class).po_addr_insert(param);
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
		System.out.println("dao id = "+id);
		param.clear();
		param.put("emailid", id);
		Integer postListCnt = sqlSession.getMapper(PoohMapper.class).postListCnt(param);
		return postListCnt;
	}
}
