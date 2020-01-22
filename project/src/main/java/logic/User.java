package logic;

import java.util.Date;

public class User {
	private String emailid;
	private String pass;
	private String name;
	private String nickname;
	private Date birth;
	private String phone;
	private int mileage;
	private String address;
	private String grade;
	private String userimg;
	
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getMileage() {
		return mileage;
	}
	public void setMileage(int mileage) {
		this.mileage = mileage;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getUserimg() {
		return userimg;
	}
	public void setUserimg(String userimg) {
		this.userimg = userimg;
	}
	@Override
	public String toString() {
		return "User [emailid=" + emailid + ", pass=" + pass + ", name=" + name + ", nickname=" + nickname + ", birth="
				+ birth + ", phone=" + phone + ", mileage=" + mileage + ", address=" + address + ", grade=" + grade
				+ ", userimg=" + userimg + "]";
	}
	
}
