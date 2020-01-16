package logic;

public class Ulike {
	private int cl_num;
	private String emailid;
	private int like_type;
	
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
	public int getLike_type() {
		return like_type;
	}
	public void setLike_type(int like_type) {
		this.like_type = like_type;
	}
	@Override
	public String toString() {
		return "Ulike [cl_num=" + cl_num + ", emailid=" + emailid + ", like_type=" + like_type + "]";
	}
	
}
