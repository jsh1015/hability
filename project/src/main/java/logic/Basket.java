package logic;

public class Basket {
	private String emailid;
	private int cl_num;
	private int kit_num;
	private int count;
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public int getCl_num() {
		return cl_num;
	}
	public void setCl_num(int cl_num) {
		this.cl_num = cl_num;
	}
	public int getKit_num() {
		return kit_num;
	}
	public void setKit_num(int kit_num) {
		this.kit_num = kit_num;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "Basket [emailid=" + emailid + ", cl_num=" + cl_num + ", kit_num=" + kit_num + ", count=" + count + "]";
	}

}
