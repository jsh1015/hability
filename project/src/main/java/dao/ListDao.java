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
	
	public List<Class> list(){
		return sqlSession.getMapper(ListMapper.class).list(null);
	}
}
