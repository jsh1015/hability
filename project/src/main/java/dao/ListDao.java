package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.ListMapper;
import logic.Class;

@Repository
public class ListDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	   private Map<String,Object> param = new HashMap<>();

	   //취미클래스,DIY,매거진 게시물 목록 => select
	   public List<Class> list(){
	      return sqlSession.getMapper(ListMapper.class).list(null);
	   }

	   public Class classDetail(int cl_num) {
			param.clear();
			param.put("cl_num", cl_num);
			return sqlSession.getMapper(ListMapper.class).list(param).get(0);

		}
}
