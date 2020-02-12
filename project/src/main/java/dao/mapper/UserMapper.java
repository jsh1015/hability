package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.Basket;
import logic.Mileage;
import logic.Orderlist;
import logic.Postaddr;
import logic.Qna;
import logic.Ulike;
import logic.Uorder;
import logic.User;
import logic.Video;

public interface UserMapper {
	
	@Insert("insert into user (emailid, userimg, pass, name, nickname, birth, phone, grade) "
			+ " values (#{emailid}, #{userimg}, #{pass}, #{name}, #{nickname}, #{birth}, #{phone}," + 1 + ")")
	void insert(User user);
	
	
	@Insert("insert into user (emailid, userimg, name, nickname, grade) "
			+ " values (#{emailid}, #{userimg}, #{name}, #{nickname}, " + 1 + ")")
	void naver_insert(Map<Object, Object> param);

	@Insert("insert into user (emailid, userimg, name, nickname, grade) "
			+ " values (#{emailid}, #{userimg}, #{nickname}, #{nickname}, " + 1 + ")")
	void kakao_insert(Map<Object, Object> param);


	@Insert("insert into mileage (mi_num, emailid, mi_type, mi_date, mi_content, mi_point, mi_end, od_num) "
			+ " values (${mi_num}, '${emailid}', ${mi_type}, now(), '${mi_content}', ${mi_point}, date_add(now(), interval 1 year), ${od_num})")
	void mileageinsert(Map<Object, Object> param);

	@Select({"<script>"
			+ "select * from user"
			+ "<if test='emailid!=null'> where emailid=#{emailid} </if>"
			+ "</script>"})
	User select(Map<Object, Object> param);

	@Update("update user set name=#{name},nickname=#{nickname} where emailid=#{emailid}")
	void update(Map<Object, Object> param);

	@Delete("delete from user where emailid=#{emailid}")
	void delete(String emailid);

	@Update("update userbackup set password=#{chgpass} where emailid=#{emailid}")
	void passupdate(Map<Object, Object> param);

	@Select("select ifnull(max(mi_num),0) from mileage where emailid=#{emailid}")
	int maxnum(Object object);

	@Select("select sum(mi_point) from mileage where mi_type = 1 and emailid = #{emailid} ")
	int total_point(Object object);

	@Select("select ifnull(sum(mi_point),0) from mileage where mi_type = 2 and emailid = #{emailid} ")
	int use_point(Object object);
	
	@Update("update user set mileage=${mileage} where emailid=#{emailid}")
	void mileageupdate(Map<Object, Object> param);

	@Select("select * from mileage where emailid = #{emailid}")
	List<Mileage> mileagelist(String emailid);

	@Select({"<script>"
			+ "select * from user"
			+ "<if test='emailid!=null'> where emailid=#{emailid} </if>"
			+ "</script>"})
	List<User> selectlist(Map<Object, Object> param);

	@Select("select u.emailid, l.od_num,c.cl_num,c.cl_img,c.cl_title,cl_category from uorder u, orderlist l, class c where emailid=#{emailid} and u.od_num=l.od_num and c.cl_num=l.cl_num")
	List<Orderlist> odlist(User emailid);

	@Select("select v.v_num,v.v_file, v.v_title, c.cl_num, c.cl_category from video v ,class c where c.cl_num=v.cl_num and c.cl_num=#{cl_num}")
	List<Video> vlist(Integer cl_num);

	@Select("select v_file from video where v_num = #{v_num}")
	String clickvideo(Integer v_num);

	@Select("select * from ulike where emailid = #{emailid} and not like_type=3")
	List<Ulike> likelist(String emailid);

	@Select("select * from ulike where emailid = #{emailid} and like_type=3")
	List<Ulike> likemlist(String emailid);

	@Select("select count(*) from uorder where emailid = #{emailid}")
	int myclasscnt(User emailid);
	
//강제탈퇴 부분
	@Delete("delete from mileage where emailid=#{emailid}")
	void usermileagedelete(String emailid);

	@Select("select * from postaddr where emailid = #{emailid}")
	List<Postaddr> postaddrlist(String emailid);

	@Delete("delete from postaddr where emailid=#{emailid}")
	void postaddrdelete(String emailid);

	@Select("select * from qna where emailid = #{emailid}")
	List<Qna> qnaselect(String emailid);

	@Select("select * from basket where emailid = #{emailid}")
	List<Basket> basketselect(String emailid);

	@Select("select * from orderlist where emailid=#{emailid}")
	List<Orderlist> odlistselect(String emailid);

	@Select("select * from uorder where emailid =#{emailid}")
	List<Uorder> orderselect(String emailid);

	@Delete("delete from qna where emailid=#{emailid}")
	void qnaselectdelete(String emailid);

	@Delete("delete from basket where emailid=#{emailid}")
	void basketselectdelete(String emailid);

	@Delete("delete from orderlist where od_num=#{od_num}")
	void odlistselectdelete(int od_num);

	@Delete("delete from uorder where emailid=#{emailid}")
	void orderselectdelete(String emailid);



}
