package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.User;

public interface UserMapper {
	
	@Insert("insert into user (emailid, userimg, pass, name, nickname, birth, phone, mileage, grade) "
			+ " values (#{emailid}, #{userimg}, #{pass}, #{name}, #{nickname}, #{birth}, #{phone}, "+1000 + "," + 1 + ")")
	void insert(User user);

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
}
