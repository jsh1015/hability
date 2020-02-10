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

public interface ListMapper {

	@Select({"<script>select * from class ",
		"<if test='board_type != null'> where board_type=#{board_type} </if>",
		"<if test='cl_num != null'> where cl_num=#{cl_num} </if></script>"})
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

	@Select("select * from comment where cl_num = #{cl_num}")
	List<Comment> commentList(int cl_num);

	@Select("select ifnull(max(cm_num),0) from comment")
	int cm_num();
	
	@Insert("insert into comment (cm_num, cl_num, cm_type, cm_date, cm_content, emailid) "
			+ " values (${cm_num}, ${cl_num}, ${cm_type}, now(), '${cm_content}', '${emailid}')")
	void commentinsert(Map<String, Object> param);

	@Select("select count(*) from comment where cl_num = #{cl_num}")
	int commentcount(int cl_num);

}
