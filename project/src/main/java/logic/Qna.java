package logic;

import java.util.Date;

public class Qna {
	private int q_num;
	private String emailid;
	private String name;
	private int q_type;
	private String q_title;
	private String q_content;
	private String q_img;
	private Date q_date;
	private String q_info;
	public int getQ_num() {
		return q_num;
	}
	public void setQ_num(int q_num) {
		this.q_num = q_num;
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
	public int getQ_type() {
		return q_type;
	}
	public void setQ_type(int q_type) {
		this.q_type = q_type;
	}
	public String getQ_title() {
		return q_title;
	}
	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}
	public String getQ_content() {
		return q_content;
	}
	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}
	public String getQ_img() {
		return q_img;
	}
	public void setQ_img(String q_img) {
		this.q_img = q_img;
	}
	public Date getQ_date() {
		return q_date;
	}
	public void setQ_date(Date q_date) {
		this.q_date = q_date;
	}
	public String getQ_info() {
		return q_info;
	}
	public void setQ_info(String q_info) {
		this.q_info = q_info;
	}
	
	@Override
	public String toString() {
		return "Qna [q_num=" + q_num + ", emailid=" + emailid + ", name=" + name + ", q_type=" + q_type + ", q_title="
				+ q_title + ", q_content=" + q_content + ", q_img=" + q_img + ", q_date=" + q_date + ", q_info="
				+ q_info + "]";
	}
}
