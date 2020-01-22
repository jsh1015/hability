package logic;

import java.util.Date;

public class Notice {
	private int no_num;
	private String no_content;
	private Date no_date;
	public int getNo_num() {
		return no_num;
	}
	public void setNo_num(int no_num) {
		this.no_num = no_num;
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
		return "Notice [no_num=" + no_num + ", no_content=" + no_content + ", no_date=" + no_date + "]";
	}
}
