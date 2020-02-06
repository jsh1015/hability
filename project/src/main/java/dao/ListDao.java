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
	public List<Class> list(Integer board_type) {
		param.clear();
		param.put("board_type",board_type);
		return sqlSession.getMapper(ListMapper.class).list(param);
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
	public int kitnum(Integer cl_num) {
		return sqlSession.getMapper(ListMapper.class).kitnum(cl_num);
	}


	//게시물 상세보기
	public Class classDetail(int cl_num) {
		param.clear();
		param.put("cl_num", cl_num);
		return sqlSession.getMapper(ListMapper.class).list(param).get(0);
	}
	//게시물 수정
	public void update(Class classes) {
		sqlSession.getMapper(ListMapper.class).update(classes);
	}
	//get 내용
	public Class selectnum(Integer cl_num) {
		param.clear();
		param.put("cl_num",cl_num);
		return sqlSession.getMapper(ListMapper.class).list(param).get(0);
	}
	
	public void delete(Class classes) {
		sqlSession.getMapper(ListMapper.class).delete(classes);
	}
	
	public void kitdelete(Integer cl_num, Integer kit_num) {
		sqlSession.getMapper(ListMapper.class).kdelete(cl_num,kit_num);
	}

	public List<Kit> kitList(int cl_num) {
		param.clear();
		param.put("cl_num",cl_num);
		return sqlSession.getMapper(ListMapper.class).kitList(param);
	}
	
}
