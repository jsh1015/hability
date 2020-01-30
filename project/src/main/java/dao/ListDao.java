package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.ListMapper;
import logic.Class;
import logic.Kit;

@Repository
public class ListDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<>();

	// 취미클래스,DIY,매거진 게시물 목록 => select
	public List<Class> list() {
		return sqlSession.getMapper(ListMapper.class).list(null);
	}

	// 각 게시물 detail=>select
	public Class selectcl(Integer cl_num) {
		param.clear();
		param.put("cl_num", cl_num);
		return sqlSession.getMapper(ListMapper.class).list(param).get(0);
	}

	// 게시물 등록 boardwrite
	public void insert(Class classes) {
		sqlSession.getMapper(ListMapper.class).write(classes);
	}

	// kit 등록
	public void kitinsert(Kit kit) {
		sqlSession.getMapper(ListMapper.class).kitinsert(kit);
	}
	
	//게시물 번호
	public int maxnum() {
		return sqlSession.getMapper(ListMapper.class).maxnum();
	}
	
	//키트 번호
	public int kitnum() {
		return sqlSession.getMapper(ListMapper.class).kitnum();
	}

	public Class classDetail(int cl_num) {
		param.clear();
		param.put("cl_num", cl_num);
		return sqlSession.getMapper(ListMapper.class).list(param).get(0);
	}

	public List<Kit> kitList(int cl_num) {
		param.clear();
		param.put("cl_num", cl_num);
		return sqlSession.getMapper(ListMapper.class).kitList(param);
	}
}
