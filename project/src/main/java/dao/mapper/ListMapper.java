package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.Class;
import logic.Comment;
import logic.Kit;
import logic.Notice;
import logic.Ulike;
import logic.Video;

public interface ListMapper {

	@Select({"<script>select * from class ",
		"<if test='board_type != null'> where board_type=#{board_type} </if>",
		"<if test='cl_num != null'> where cl_num=#{cl_num} </if>",
		"<if test='cl_category != null'> and cl_category=#{cl_category} </if></script>"})
	List<Class> list(Map<String,Object> param);


	@Insert("insert into class (cl_num, board_type, cl_type, cl_category, cl_title, cl_img, teacher, cl_price, cl_info, cl_story, cl_content, cl_date) "
			+"values (#{cl_num}, #{board_type}, #{cl_type}, #{cl_category}, #{cl_title}, #{cl_img}, #{teacher}, #{cl_price}, #{cl_info}, #{cl_story}, #{cl_content}, now())")
	void write(Class classes);

	@Insert("insert into kit (kit_num, cl_num, kit_name, kit_box, kit_price,kit_img) values (#{kit_num},#{cl_num},#{kit_name},#{kit_box},#{kit_price},#{kit_img})")
	void kitinsert(Kit kit);

	@Select("select ifnull(max(cl_num),0) from class")
	int maxnum();
	
	@Select("select ifnull(max(kit_num),0) from kit where cl_num=#{cl_num}")
	int kitnum(Integer cl_num);

	@Update("update class set board_type=#{board_type}, cl_type=#{cl_type}, cl_catetory=#{cl_category}, cl_title=#{cl_title}, cl_img=#{cl_img}, teacher=#{teacher}, cl_price=#{cl_price}, cl_info=#{cl_info}, cl_story=#{cl_story}, cl_content=#{cl_content} where cl_num=#{cl_num}")
	void update(Class classes);

	@Delete("delete from class where cl_num=#{cl_num}")
	void delete(Class classes);

	@Select("select * from kit where cl_num=#{cl_num}")
	List<Kit> kitList(Map<String, Object> param);

	@Delete("delete from kit where cl_num=#{cl_num} and kit_num=#{kit_num}")
	void kdelete(@Param("cl_num") Integer cl_num, @Param("kit_num") Integer kit_num);

	@Select("select * from ulike where cl_num = #{cl_num} and emailid = #{emailid}")
	String lselect(Map<String, Object> param);

	@Insert("insert into ulike (cl_num, emailid, like_type) values (#{cl_num},#{emailid},#{like_type})")
	void linsert(Ulike ul);

	@Delete("delete from ulike where cl_num = #{cl_num} and emailid = #{emailid}")
	void ldelete(Ulike ul);

	@Select("select ifnull(max(v_num),0) from video where cl_num=#{cl_num}")
	int videonum(Integer cl_num);
	
	@Insert("insert into video (v_num, cl_num, v_title, v_file) values (#{v_num}, #{cl_num}, #{v_title}, #{v_file})")
	void vinsert(Video video);

	@Delete("delete from video where cl_num = ${cl_num} and v_num =${v_num}")
	void vdelete(@Param("cl_num") Integer cl_num,@Param("v_num")  Integer v_num);

	@Select("select cl_title, cl_category, cl_img from class where cl_num=#{cl_num}")
	Class getclass(Integer cl_num);

	@Select({"<script>SELECT * FROM comment ",
		"<if test='cl_num != null'> where cl_num=#{cl_num} </if>",
		"<if test='cm_type != null'> where cm_type=#{cm_type} </if></script>"})
	List<Comment> commentList(@Param("cl_num")Integer cl_num, @Param("cm_type")Integer cm_type);

	@Select("select ifnull(max(cm_num),0) from comment")
	int cm_num();
	
	@Insert("insert into comment (cm_num, cl_num, cm_type, cm_date, cm_content, emailid) "
			+ " values (${cm_num}, ${cl_num}, ${cm_type}, now(), '${cm_content}', '${emailid}')")
	void commentinsert(Map<String, Object> param);

	@Select("select count(*) from comment where cl_num = #{cl_num}")
	int commentcount(int cl_num);

	@Delete("delete from comment where cm_num=#{cm_num}")
	void cmdelete(Integer cm_num);


	@Select("select ifnull(max(no_num),0) from notice")
	int no_max();

	@Insert("insert into notice (no_num, no_type, no_title, no_content, no_date) "
			+"values (#{no_num}, #{no_type}, #{no_title}, #{no_content}, now())")
	void noticewrite(Notice notice);

	@Select("select * from notice")
	List<Notice> noticeList(Object object);

	@Select("select * from comment where cm_type=#{cm_type}")
	List<Comment> colist(int cm_type);


	@Select("select * from class where cl_num=#{cl_num}")
	List<Comment> magazinelist(int cl_num);


}
