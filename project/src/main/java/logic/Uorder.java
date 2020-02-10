package logic;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.validator.constraints.NotEmpty;

public class Uorder {
	private int od_num;
	@NotEmpty(message="이메일을 입력하세요.")
	private String emailid;
	@NotEmpty(message="주문자명을 입력하세요.")
	private String name;
	@NotEmpty(message="휴대전화를 입력하세요.")
	private String phone;
	private String od_name;
	private String od_client;
	private String od_phone;
	private String od_phone2;
	private String od_addr_main;
	private String od_addr_sub;
	private String od_comment;
	private String od_deliver;
	private Date od_date;
	
	// db에 필요없음
	private List<Orderlist> orderlist = new ArrayList<Orderlist>();
	private User user;
	private Kit kit;
	private Class cls;
	
	public Kit getKit() {
		return kit;
	}
	public void setKit(Kit kit) {
		this.kit = kit;
	}
	public Class getCls() {
		return cls;
	}
	public void setCls(Class cls) {
		this.cls = cls;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public List<Orderlist> getOrderlist() {
		return orderlist;
	}
	public void setOrderlist(List<Orderlist> orderlist) {
		this.orderlist = orderlist;
	}
	public Date getOd_date() {
		return od_date;
	}
	public void setOd_date(Date od_date) {
		this.od_date = od_date;
	}
	public int getOd_num() {
		return od_num;
	}
	public void setOd_num(int od_num) {
		this.od_num = od_num;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getOd_name() {
		return od_name;
	}
	public void setOd_name(String od_name) {
		this.od_name = od_name;
	}
	public String getOd_client() {
		return od_client;
	}
	public void setOd_client(String od_client) {
		this.od_client = od_client;
	}
	public String getOd_phone() {
		return od_phone;
	}
	public void setOd_phone(String od_phone) {
		this.od_phone = od_phone;
	}
	public String getOd_phone2() {
		return od_phone2;
	}
	public void setOd_phone2(String od_phone2) {
		this.od_phone2 = od_phone2;
	}
	
	public String getOd_addr_main() {
		return od_addr_main;
	}
	public void setOd_addr_main(String od_addr_main) {
		this.od_addr_main = od_addr_main;
	}
	public String getOd_addr_sub() {
		return od_addr_sub;
	}
	public void setOd_addr_sub(String od_addr_sub) {
		this.od_addr_sub = od_addr_sub;
	}
	public String getOd_comment() {
		return od_comment;
	}
	public void setOd_comment(String od_comment) {
		this.od_comment = od_comment;
	}
	public String getOd_deliver() {
		return od_deliver;
	}
	public void setOd_deliver(String od_deliver) {
		this.od_deliver = od_deliver;
	}
	@Override
	public String toString() {
		return "Uorder [od_num=" + od_num + ", emailid=" + emailid + ", name=" + name + ", phone=" + phone
				+ ", od_name=" + od_name + ", od_client=" + od_client + ", od_phone=" + od_phone + ", od_phone2="
				+ od_phone2 + ", od_addr_main=" + od_addr_main + ", od_addr_sub=" + od_addr_sub + ", od_comment="
				+ od_comment + ", od_deliver=" + od_deliver + ", od_date=" + od_date + ", orderlist=" + orderlist
				+ ", user=" + user + ", kit=" + kit + ", cls=" + cls + "]";
	}
	
}
