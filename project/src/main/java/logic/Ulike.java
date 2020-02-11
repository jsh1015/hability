package logic;

import java.util.Date;

public class Ulike {
	private int cl_num;
	private String emailid;
	private int like_type;
	private String cl_img;
	private String cl_title;
	private String cl_content;
	private String teacher;
	private Date time;
	public int getCl_num() {
		return cl_num;
	}
	public void setCl_num(int cl_num) {
		this.cl_num = cl_num;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public int getLike_type() {
		return like_type;
	}
	public void setLike_type(int like_type) {
		this.like_type = like_type;
	}
	
	public String getCl_img() {
		return cl_img;
	}
	public void setCl_img(String cl_img) {
		this.cl_img = cl_img;
	}
	public String getCl_title() {
		return cl_title;
	}
	public void setCl_title(String cl_title) {
		this.cl_title = cl_title;
	}
	
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getCl_content() {
		return cl_content;
	}
	public void setCl_content(String cl_content) {
		this.cl_content = cl_content;
	}
	
	@Override
	public String toString() {
		return "Ulike [cl_num=" + cl_num + ", emailid=" + emailid + ", like_type=" + like_type + ", cl_img=" + cl_img
				+ ", cl_title=" + cl_title + ", cl_content=" + cl_content + ", teacher=" + teacher + ", time=" + time
				+ "]";
	}
}
