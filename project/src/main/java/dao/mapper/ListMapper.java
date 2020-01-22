package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import logic.Class;

public interface ListMapper {

	@Select({"<script>select * from class ",
			 "<if test='cl_num != null'> where cl_num=#{cl_num} </if></script>"})
	List<Class> list(Map<String,Object> param);

}
