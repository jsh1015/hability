package logic;

public class Report {
	private int cm_num;
	private int cl_num;
	private int ma_num;
	private String emailid;
	private int problem;
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
	public int getMa_num() {
		return ma_num;
	}
	public void setMa_num(int ma_num) {
		this.ma_num = ma_num;
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
	@Override
	public String toString() {
		return "Report [cm_num=" + cm_num + ", cl_num=" + cl_num + ", ma_num=" + ma_num + ", emailid=" + emailid
				+ ", problem=" + problem + "]";
	}
	
}
