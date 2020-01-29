package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.Mileage;
import logic.User;

public interface UserMapper {
	
	@Insert("insert into user (emailid, userimg, pass, name, nickname, birth, phone, grade) "
			+ " values (#{emailid}, #{userimg}, #{pass}, #{name}, #{nickname}, #{birth}, #{phone}," + 1 + ")")
	void insert(User user);

	@Insert("insert into mileage (mi_num, emailid, mi_type, mi_date, mi_content, mi_point, mi_end) "
			+ " values (${mi_num}, '${emailid}', "+ 1 +", now(), '${mi_content}', ${mi_point}, date_add(now(), interval 1 year))")
	void mileageinsert(Map<Object, Object> param);

	@Select({"<script>"
			+ "select * from user"
			+ "<if test='emailid!=null'> where emailid=#{emailid} </if>"
			+ "</script>"})
	List<User> select(Map<Object, Object> param);

	@Update("update userbackup set username=#{username},"
				+"phoneno=#{phoneno},postcode=#{postcode},address=#{address},email=#{email},birthday=#{birthday}"
				+ " where emailid=#{emailid}")
	void update(User user);

	@Delete("delete from userbackup where emailid=#{emailid}")
	void delete(String emailid);

	@Update("update userbackup set password=#{chgpass} where emailid=#{emailid}")
	void passupdate(Map<Object, Object> param);

	@Select("select ifnull(max(mi_num),1) from mileage")
	int maxnum(Object object);

	@Select("select sum(mi_point) from mileage where mi_type = 1 and emailid = #{emailid} ")
	int total_point(Object object);

	@Select("select ifnull(sum(mi_point),0) from mileage where mi_type = 2 and emailid = #{emailid} ")
	int use_point(Object object);	
	
	@Update("update user set mileage=${mileage} where emailid=#{emailid}")
	void mileageupdate(Map<Object, Object> param);


}
