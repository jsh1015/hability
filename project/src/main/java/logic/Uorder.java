package logic;

import java.util.Date;

public class Uorder {
	private int od_num;
	private String emailid;
	private String name;
	private String phone;
	private String od_name;
	private String od_client;
	private String od_phone;
	private String od_phone2;
	private String od_addr;
	private String od_comment;
	private Date od_date;
	private String od_deliver;
	
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
	public String getOd_addr() {
		return od_addr;
	}
	public void setOd_addr(String od_addr) {
		this.od_addr = od_addr;
	}
	public String getOd_comment() {
		return od_comment;
	}
	public void setOd_comment(String od_comment) {
		this.od_comment = od_comment;
	}
	public Date getOd_date() {
		return od_date;
	}
	public void setOd_date(Date od_date) {
		this.od_date = od_date;
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
				+ od_phone2 + ", od_addr=" + od_addr + ", od_comment=" + od_comment + ", od_date=" + od_date
				+ ", od_deliver=" + od_deliver + "]";
	}

}
