package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.PoohMapper;
import logic.Kit;
import logic.Postaddr;
import logic.User;
import exception.LoginException;


@Repository
public class PoohDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<>();
	
	public void po_addr_insert(Postaddr postaddr) {
		int po_num = sqlSession.getMapper(PoohMapper.class).max_po_num();
		System.out.println(po_num);

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
		System.out.println("dao id = "+id);
		param.clear();
		param.put("emailid", id);
		Integer postListCnt = sqlSession.getMapper(PoohMapper.class).postListCnt(param);
		return postListCnt;
	}

	public Kit kitInfo(String kit_num, int cl_num) {
		param.clear();
		param.put("kit_num", kit_num);
		param.put("cl_num", cl_num);
		return sqlSession.getMapper(PoohMapper.class).kitInfo(param);
	}

	public void basketAdd(Kit kit) {
		sqlSession.getMapper(PoohMapper.class).basketAdd(kit);		
	}

	public void addrDelete(int po_num) {
		sqlSession.getMapper(PoohMapper.class).addrDelete(po_num);		
	}
}
