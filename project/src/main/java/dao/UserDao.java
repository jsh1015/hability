package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.UserMapper;
import logic.Mileage;
import logic.User;

@Repository
public class UserDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	Map<Object, Object> param = new HashMap<Object,Object>();
	
	// 성공
	public void insert(User user) {
		sqlSession.getMapper(UserMapper.class).insert(user);
	}

	public void mileageinsert(String emailid, String mi_content, int mi_point, int mi_num) 
	{
		param.clear();
		param.put("mi_num",mi_num);
		param.put("emailid",emailid);
		param.put("mi_content",mi_content);
		param.put("mi_point",mi_point);
		sqlSession.getMapper(UserMapper.class).mileageinsert(param);
	}
	
	public void mileageupdate(Mileage mileage, String emailid) {
		param.clear();
		param.put("mileage",mileage);
		param.put("emailid",emailid);		
		sqlSession.getMapper(UserMapper.class).mileageupdate(param);		
	}
	
	public void mileageupdate(int mileage, String emailid) {
		param.clear();
		param.put("mileage",mileage);
		param.put("emailid",emailid);				
		sqlSession.getMapper(UserMapper.class).mileageupdate(param);
		
	}
	
	// 성공
	public User selectOne(String emailid) {
		param.clear();
		param.put("emailid",emailid);
		List<User> list = sqlSession.getMapper(UserMapper.class).select(param);
		return list.get(0);
	}

	public void update(User user) {
		sqlSession.getMapper(UserMapper.class).update(user);
	}

	public void delete(String emailid) {
		param.clear();
		param.put("emailid",emailid);
		sqlSession.getMapper(UserMapper.class).delete(emailid);
	}

	public List<User> userlist() {
		return sqlSession.getMapper(UserMapper.class).select(null);
	}

	public List<User> list(String[] idchks) {
		param.clear();
		param.put("idchks",idchks);
		return sqlSession.getMapper(UserMapper.class).select(param);
	}

	public void passupdate(String emailid, String chgpass) {
		param.clear();
		param.put("emailid",emailid);
		param.put("chgpass",chgpass);
		sqlSession.getMapper(UserMapper.class).passupdate(param);
	}
	public int maxnum() {
		return sqlSession.getMapper(UserMapper.class).maxnum(null);
	}

	public int total_point(String emailid) {
		return sqlSession.getMapper(UserMapper.class).total_point(emailid);
	}

	public int use_point(String emailid) {
		return sqlSession.getMapper(UserMapper.class).use_point(emailid);
	}

}
