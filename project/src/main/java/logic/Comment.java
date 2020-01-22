package logic;

import java.util.Date;

public class Comment {
	private int cm_num;
	private int cl_num;
	private int cm_type;
	private int cm_star;
	private String content;
	private String cm_img1;
	private String cm_img2;
	private String cm_img3;
	private Date cm_date;
	private String emailid;
	public int getCm_num() {
		return cm_num;
	}
	public void setCm_num(int cm_num) {
		this.cm_num = cm_num;
	}
	public int getCl_num() {
		return cl_num;
	}
	public void setCl_num(int cl_num) {
		this.cl_num = cl_num;
	}
	public int getCm_type() {
		return cm_type;
	}
	public void setCm_type(int cm_type) {
		this.cm_type = cm_type;
	}
	public int getCm_star() {
		return cm_star;
	}
	public void setCm_star(int cm_star) {
		this.cm_star = cm_star;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCm_img1() {
		return cm_img1;
	}
	public void setCm_img1(String cm_img1) {
		this.cm_img1 = cm_img1;
	}
	public String getCm_img2() {
		return cm_img2;
	}
	public void setCm_img2(String cm_img2) {
		this.cm_img2 = cm_img2;
	}
	public String getCm_img3() {
		return cm_img3;
	}
	public void setCm_img3(String cm_img3) {
		this.cm_img3 = cm_img3;
	}
	public Date getCm_date() {
		return cm_date;
	}
	public void setCm_date(Date cm_date) {
		this.cm_date = cm_date;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	@Override
	public String toString() {
		return "Comment [cm_num=" + cm_num + ", cl_num=" + cl_num + ", cm_type=" + cm_type + ", cm_star=" + cm_star
				+ ", content=" + content + ", cm_img1=" + cm_img1 + ", cm_img2=" + cm_img2 + ", cm_img3=" + cm_img3
				+ ", cm_date=" + cm_date + ", emailid=" + emailid + "]";
	}
	
	
}
