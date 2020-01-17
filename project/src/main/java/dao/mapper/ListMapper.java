package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import logic.Class;

public interface ListMapper {

	@Select("select * from class")
	List<Class> list(Map<String,Object> param);

}
