package logic;

public class Postaddr {
	private int po_num;
	private String  emailid;
	private String po_name;
	private String po_client;
	private String po_phone;
	private String po_phone2;
	private String po_addr;
	
	public int getPo_num() {
		return po_num;
	}
	public void setPo_num(int po_num) {
		this.po_num = po_num;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getPo_name() {
		return po_name;
	}
	public void setPo_name(String po_name) {
		this.po_name = po_name;
	}
	public String getPo_client() {
		return po_client;
	}
	public void setPo_client(String po_client) {
		this.po_client = po_client;
	}
	public String getPo_phone() {
		return po_phone;
	}
	public void setPo_phone(String po_phone) {
		this.po_phone = po_phone;
	}
	public String getPo_phone2() {
		return po_phone2;
	}
	public void setPo_phone2(String po_phone2) {
		this.po_phone2 = po_phone2;
	}
	public String getPo_addr() {
		return po_addr;
	}
	public void setPo_addr(String po_addr) {
		this.po_addr = po_addr;
	}
	@Override
	public String toString() {
		return "Postaddr [po_num=" + po_num + ", emailid=" + emailid + ", po_name=" + po_name + ", po_client="
				+ po_client + ", po_phone=" + po_phone + ", po_phone2=" + po_phone2 + ", po_addr=" + po_addr + "]";
	}
	
	
}
