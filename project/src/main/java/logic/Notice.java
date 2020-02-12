package logic;

import java.util.Date;

public class Notice {
	private int no_num;
	private String no_type;
	private String no_title;
	private String no_content;
	private Date no_date;
	public int getNo_num() {
		return no_num;
	}
	public void setNo_num(int no_num) {
		this.no_num = no_num;
	}
	public String getNo_type() {
		return no_type;
	}
	public void setNo_type(String no_type) {
		this.no_type = no_type;
	}
	public String getNo_title() {
		return no_title;
	}
	public void setNo_title(String no_title) {
		this.no_title = no_title;
	}
	public String getNo_content() {
		return no_content;
	}
	public void setNo_content(String no_content) {
		this.no_content = no_content;
	}
	public Date getNo_date() {
		return no_date;
	}
	public void setNo_date(Date no_date) {
		this.no_date = no_date;
	}
	@Override
	public String toString() {
		return "Notice [no_num=" + no_num + ", no_type=" + no_type + ", no_title=" + no_title + ", no_content="
				+ no_content + ", no_date=" + no_date + "]";
	}
}
