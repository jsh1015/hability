package logic;

import java.util.Date;

public class Comment {
	private int cm_num;
	private int cl_num;
	private int ma_num;
	private String emailid;
	private int cm_type;
	private int cm_star;
	private String content;
	private String cm_img;
	private Date cm_date;
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
	public int getMa_num() {
		return ma_num;
	}
	public void setMa_num(int ma_num) {
		this.ma_num = ma_num;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
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
	public String getCm_img() {
		return cm_img;
	}
	public void setCm_img(String cm_img) {
		this.cm_img = cm_img;
	}
	public Date getCm_date() {
		return cm_date;
	}
	public void setCm_date(Date cm_date) {
		this.cm_date = cm_date;
	}
	@Override
	public String toString() {
		return "Comment [cm_num=" + cm_num + ", cl_num=" + cl_num + ", ma_num=" + ma_num + ", emailid=" + emailid
				+ ", cm_type=" + cm_type + ", cm_star=" + cm_star + ", content=" + content + ", cm_img=" + cm_img
				+ ", cm_date=" + cm_date + "]";
	}
	
}
