package logic;

import java.util.Date;

public class Report {
	private int cm_num;
	private int cl_num;
	private String emailid;
	private int problem;
	private Date re_date;
	
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
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public int getProblem() {
		return problem;
	}
	public void setProblem(int problem) {
		this.problem = problem;
	}
	public Date getRe_date() {
		return re_date;
	}
	public void setRe_date(Date re_date) {
		this.re_date = re_date;
	}
	@Override
	public String toString() {
		return "Report [cm_num=" + cm_num + ", cl_num=" + cl_num + ", emailid=" + emailid + ", problem=" + problem
				+ ", re_date=" + re_date + "]";
	}
	
}
