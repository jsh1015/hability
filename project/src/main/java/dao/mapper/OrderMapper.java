package dao.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.Class;
import logic.Orderlist;
import logic.Uorder;

public interface OrderMapper {

	@Insert("insert into uorder (od_num, emailid, name, phone, od_name, od_client,"
			+ "od_phone,od_phone2, od_comment, od_date, od_deliver, od_postcode, od_addr_main, od_addr_sub) "
			+"values (#{od_num}, #{emailid}, #{name}, #{phone}, #{od_name}, #{od_client}, "
			+ "#{od_phone}, #{od_phone2}, #{od_comment}, now(), 1, #{od_postcode},#{od_addr_main},#{od_addr_sub})")
	void orderinsert(Uorder uorder);

	@Select("select ifnull(max(od_num),0) from uorder")
	int maxnum();

	@Insert("insert into orderlist (od_num,cl_num,kit_num,count)"
			+ " values (#{od_num},#{cl_num},#{kit_num},#{count})")
	void odlistinsert(Orderlist odlist);

	@Select("select * from uorder where od_num=#{od_num}")
	Uorder orderselect(int od_num);

	@Select("select * from orderlist where od_num=#{od_num} and cl_num=#{cl_num}")
	Orderlist odlistselect(Map<Object, Object> param);

	@Select("select * from class where cl_num=#{cl_num}")
	Class orderclasslist(int cl_num);
}
