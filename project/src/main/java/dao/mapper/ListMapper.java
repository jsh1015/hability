package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.Class;
import logic.Kit;

public interface ListMapper {

	@Select({"<script>select * from class ",
	 "<if test='cl_num != null'> where cl_num=#{cl_num} </if></script>"})
	List<Class> list(Map<String,Object> param);

	@Insert("insert into class (cl_num, board_type, cl_type, cl_category, cl_title, cl_img, teacher, cl_price, cl_info, cl_story, cl_content, cl_date) "
			+"values (#{cl_num}, #{board_type}, #{cl_type}, #{cl_category}, #{cl_title}, #{cl_imgUrl}, #{teacher}, #{cl_price}, #{cl_infoUrl}, #{cl_storyUrl}, #{cl_content}, #{cl_date})")
	void write(Class classes);

	@Insert("insert into kit (kit_num, cl_num, kit_name, kit_box, kit_price) values (#{kit_num},#{cl_num},#{kit_name},#{kit_box},#{kit_price})")
	void kitinsert(Kit kit);

	@Select("select ifnull(max(cl_num),0) from class")
	int maxnum();
	
	@Select("select ifnull(max(kit_num),0) from kit")
	int kitnum();

}
