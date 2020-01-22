package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.UserMapper;
import exception.LoginException;
import logic.User;

@Repository
public class UserDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	Map<Object, Object> param = new HashMap<Object,Object>();
	
	public void insert(User user) {
		sqlSession.getMapper(UserMapper.class).insert(user);
	}
	
	public User selectOne(String emailid) {
		param.clear();
		param.put("emailid",emailid);
		List<User> list = sqlSession.getMapper(UserMapper.class).select(param);
		if(list==null || list.isEmpty()){
			throw new LoginException("해당 아이디 없음","");
		}else 
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
}
