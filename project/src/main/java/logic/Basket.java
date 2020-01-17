package logic;

public class Basket {
	private int cl_num;
	private String emailid;
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
	@Override
	public String toString() {
		return "Basket [cl_num=" + cl_num + ", emailid=" + emailid + "]";
	}
	
}
