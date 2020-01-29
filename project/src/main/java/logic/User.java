package logic;

import java.util.Date;

import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

public class User {
	@NotEmpty(message="이메일을 입력해주세요.")
	private String emailid;
	@NotEmpty(message="비밀번호 입력해주세요.")
	@Size(min=6,max=16,message="비밀번호는 6~16자 영문, 숫자를 함께 입력해주세요")
	private String pass;
	@NotEmpty(message="필수 항목입니다.")
	private String passck;
	@NotEmpty(message="필수 항목입니다.")
	private String name;
	@NotEmpty(message="필수 항목입니다.")
	@Size(min=3,max=10,message="닉네임은 2~12글자로 입력해주세요")
	private String nickname;
	@Past(message="생일은 과거 날짜만 가능합니다.")
	@DateTimeFormat(pattern="yyyyMMdd")
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
	public String getPassck() {
		return passck;
	}
	public void setPassck(String passck) {
		this.passck = passck;
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
		return "User [emailid=" + emailid + ", pass=" + pass + ", passck=" + passck + ", name=" + name + ", nickname="
				+ nickname + ", birth=" + birth + ", phone=" + phone + ", mileage=" + mileage + ", address=" + address
				+ ", grade=" + grade + ", userimg=" + userimg + "]";
	}
}
	
