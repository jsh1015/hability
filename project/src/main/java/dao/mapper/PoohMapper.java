package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.Basket;
import logic.Kit;
import logic.Orderlist;
import logic.Postaddr;
import logic.Uorder;
import logic.User;

public interface PoohMapper {

	@Select("select ifnull(max(po_num),0) from postaddr")
	int max_po_num();

	@Insert("insert into postaddr (po_num, emailid,po_name,po_client,po_phone,po_phone2,po_postcode,po_addr_main,po_addr_sub)"
			+ " values (#{po_num},#{emailid},#{po_name},#{po_client},#{po_phone},#{po_phone2},#{po_postcode},#{po_addr_main},#{po_addr_sub})")
	void po_addr_insert(Postaddr postaddr);
	
	@Select("select * from user where 1=1 and emailid=#{emailid}")
	List<User> selectEmailid(Map<String, Object> param);
	
	@Select({"<script>",
				" select * from postaddr ",
					" <if test='emailid !=null'> where emailid = #{emailid} </if>",
			 "</script>"})
	List<Postaddr> postList(Map<String, Object> param);
	
	@Select("select count(*) from postaddr where emailid = #{emailid}")
	Integer postListCnt(Map<String, Object> param);

	@Select("select * from kit where cl_num=#{cl_num} and kit_num=#{kit_num} ")
	Kit kitInfo(Map<String, Object> param);
	
	@Delete("delete from postaddr where po_num=#{po_num}")
	void addrDelete(int po_num);
	
	@Update("update postaddr set "
			+ " po_name=#{po_name}, po_client=#{po_client}, po_phone=#{po_phone}, po_phone2=#{po_phone2}, "
			+ " po_postcode=#{po_postcode}, po_addr_main=#{po_addr_main}, po_addr_sub=#{po_addr_sub} "
			+ " where po_num=#{po_num} ")
	void addrUpdate(Postaddr postaddr);

	@Insert("insert into basket "
			+ "(emailid, cl_num, count, kit_num) "
			+ " values (#{emailid}, #{cl_num}, #{lastcount}, #{kit_num}) ")
	void basketAdd(@Param("kit_num") int kit_num, @Param("cl_num") int cl_num, @Param("lastcount") int lastcount, @Param("emailid") String emailid);
	
	@Select({"<script>",
				" select * from basket ",
					" <if test='emailid !=null'> where emailid = #{emailid} </if>",
			 "</script>"})
	List<Basket> basketList(Map<String, Object> param);
	
	@Select("select count(*) from basket where emailid = #{emailid}")
	Integer basketListCnt(Map<String, Object> param);

	@Delete("delete from basket where cl_num=#{bindex}")
	void basketDelete(int bindex);

	@Select({"<script>",
			 " select count(*) from uorder ",
			 " <if test='emailid !=null'> where emailid = #{emailid} </if>",
			 "</script>"})
	Integer orderListCnt(Map<String, Object> param);

	@Select({"<script>",
				"select * from uorder ",
				" <if test='emailid !=null'> where emailid = #{emailid} </if>",
			 "</script>"})
	List<Uorder> orderList(Map<String, Object> param);

	@Select("select * from orderlist where od_num = #{od_num}")
	List<Orderlist> orderClassList(Map<String, Object> param);
	
	@Update("update uorder set "
			+ " od_deliver = #{deli_val} where od_num = #{od_num} ")
	void updateDelivery(Map<String, Object> param);
}
