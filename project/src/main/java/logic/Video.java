package logic;

public class Video {
	private int v_num;
	private int cl_num;
	private String v_title;
	private String v_file;
	
	public int getV_num() {
		return v_num;
	}
	public void setV_num(int v_num) {
		this.v_num = v_num;
	}
	public int getCl_num() {
		return cl_num;
	}
	public void setCl_num(int cl_num) {
		this.cl_num = cl_num;
	}
	public String getV_title() {
		return v_title;
	}
	public void setV_title(String v_title) {
		this.v_title = v_title;
	}
	public String getV_file() {
		return v_file;
	}
	public void setV_file(String v_file) {
		this.v_file = v_file;
	}
	
	@Override
	public String toString() {
		return "Video [v_num=" + v_num + ", cl_num=" + cl_num + ", v_title=" + v_title + ", v_file=" + v_file + "]";
	}
	
}
