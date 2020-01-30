package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.Postaddr;
import logic.User;

public interface PoohMapper {

	@Select("select ifnull(max(po_num),0) from postaddr")
	int max_po_num();

	@Insert("insert into postaddr (po_num, emailid,po_name,po_client,po_phone,po_phone2,po_postcode,po_addr_main,po_addr_sub)"
			+ " values (#{po_num},#{emailid},#{po_name},#{po_client},#{po_phone},#{po_phone2},#{po_postcode},#{po_addr_main},#{po_addr_sub})")
	void po_addr_insert(Map<String, Object> param);

	@Select("select * from user where 1=1 and emailid=#{emailid}")
	List<User> selectEmailid(Map<String, Object> param);
	
	@Select({"<script>",
				" select * from postaddr ",
					" <if test='emailid !=null'> where emailid = #{emailid} </if>",
			 "</script>"})
	List<Postaddr> postList(Map<String, Object> param);
	
	@Select("select count(*) from postaddr where emailid = #{emailid}")
	Integer postListCnt(Map<String, Object> param);

}
