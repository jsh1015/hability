package logic;

import java.util.Date;

public class Mileage {
	private String emailid;
	private String mi_content;
	private int mi_point;
	private Date mi_date;
	private Date mi_end;
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
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
	public Date getMi_date() {
		return mi_date;
	}
	public void setMi_date(Date mi_date) {
		this.mi_date = mi_date;
	}
	public Date getMi_end() {
		return mi_end;
	}
	public void setMi_end(Date mi_end) {
		this.mi_end = mi_end;
	}
	@Override
	public String toString() {
		return "Mileage [emailid=" + emailid + ", mi_content=" + mi_content + ", mi_point=" + mi_point + ", mi_date="
				+ mi_date + ", mi_end=" + mi_end + "]";
	}

}
