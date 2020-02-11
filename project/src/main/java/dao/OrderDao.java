package dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.OrderMapper;
import dao.mapper.UserMapper;
import logic.Class;
import logic.Orderlist;
import logic.Uorder;

@Repository
public class OrderDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	Map<Object, Object> param = new HashMap<Object,Object>();
	
	public void orderinsert(Uorder uorder) {
		sqlSession.getMapper(OrderMapper.class).orderinsert(uorder);
	}

	public int maxnum() {
		return sqlSession.getMapper(OrderMapper.class).maxnum();
	}

	public void odlistinsert(Orderlist odlist) {
		sqlSession.getMapper(OrderMapper.class).odlistinsert(odlist);
	}

	public Uorder orderselect(int od_num) {
		return sqlSession.getMapper(OrderMapper.class).orderselect(od_num);
	}

	public Orderlist odlistselect(int od_num, int cl_num) {
		param.clear();
		param.put("od_num",od_num);
		param.put("cl_num",cl_num);
		return sqlSession.getMapper(OrderMapper.class).odlistselect(param);
	}

	public Class orderclasslist(int cl_num) {
		return sqlSession.getMapper(OrderMapper.class).orderclasslist(cl_num);
	}
}
