package logic;

import java.util.Date;

public class Magazine {
	private int ma_num;
	private String ma_title;
	private String ma_content;
	private Date ma_date;
	public int getMa_num() {
		return ma_num;
	}
	public void setMa_num(int ma_num) {
		this.ma_num = ma_num;
	}
	public String getMa_title() {
		return ma_title;
	}
	public void setMa_title(String ma_title) {
		this.ma_title = ma_title;
	}
	public String getMa_content() {
		return ma_content;
	}
	public void setMa_content(String ma_content) {
		this.ma_content = ma_content;
	}
	public Date getMa_date() {
		return ma_date;
	}
	public void setMa_date(Date ma_date) {
		this.ma_date = ma_date;
	}
	@Override
	public String toString() {
		return "Magazine [ma_num=" + ma_num + ", ma_title=" + ma_title + ", ma_content=" + ma_content + ", ma_date="
				+ ma_date + "]";
	}
	
}
