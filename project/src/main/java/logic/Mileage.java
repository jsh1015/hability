package logic;

import java.util.Date;

public class Mileage {
	private int mi_num;
	private String emailid;
	private Date mi_date;
	private int mi_type;
	private String mi_content;
	private int mi_point;
	private Date mi_end;
	public int getMi_num() {
		return mi_num;
	}
	public void setMi_num(int mi_num) {
		this.mi_num = mi_num;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public Date getMi_date() {
		return mi_date;
	}
	public void setMi_date(Date mi_date) {
		this.mi_date = mi_date;
	}
	public int getMi_type() {
		return mi_type;
	}
	public void setMi_type(int mi_type) {
		this.mi_type = mi_type;
	}
	public String getMi_content() {
		return mi_content;
	}
	public void setMi_content(String mi_content) {
		this.mi_content = mi_content;
	}
	public int getMi_point() {
		return mi_point;
	}
	public void setMi_point(int mi_point) {
		this.mi_point = mi_point;
	}
	public Date getMi_end() {
		return mi_end;
	}
	public void setMi_end(Date mi_end) {
		this.mi_end = mi_end;
	}
	
	@Override
	public String toString() {
		return "Mileage [mi_num=" + mi_num + ", emailid=" + emailid + ", mi_date=" + mi_date + ", mi_type=" + mi_type
				+ ", mi_content=" + mi_content + ", mi_point=" + mi_point + ", mi_end=" + mi_end + "]";
	}
	
}
