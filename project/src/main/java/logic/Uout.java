package logic;

public class Uout {
	private String emailid;
	private int  reason;
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public int getReason() {
		return reason;
	}
	public void setReason(int reason) {
		this.reason = reason;
	}
	
	@Override
	public String toString() {
		return "uout [emailid=" + emailid + ", reason=" + reason + "]";
	}

}
