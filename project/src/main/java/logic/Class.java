package logic;

public class Class {
	private int cl_num;
	private int board_type;
	private int cl_type;
	private String cl_category;
	private String cl_title;
	private String teacher;
	private int cl_price;
	private String cl_info;
	private String cl_stroy;
	private String cl_content;
	public int getCl_num() {
		return cl_num;
	}
	public void setCl_num(int cl_num) {
		this.cl_num = cl_num;
	}
	public int getBoard_type() {
		return board_type;
	}
	public void setBoard_type(int board_type) {
		this.board_type = board_type;
	}
	public int getCl_type() {
		return cl_type;
	}
	public void setCl_type(int cl_type) {
		this.cl_type = cl_type;
	}
	public String getCl_category() {
		return cl_category;
	}
	public void setCl_category(String cl_category) {
		this.cl_category = cl_category;
	}
	public String getCl_title() {
		return cl_title;
	}
	public void setCl_title(String cl_title) {
		this.cl_title = cl_title;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	public int getCl_price() {
		return cl_price;
	}
	public void setCl_price(int cl_price) {
		this.cl_price = cl_price;
	}
	public String getCl_info() {
		return cl_info;
	}
	public void setCl_info(String cl_info) {
		this.cl_info = cl_info;
	}
	public String getCl_stroy() {
		return cl_stroy;
	}
	public void setCl_stroy(String cl_stroy) {
		this.cl_stroy = cl_stroy;
	}
	public String getCl_content() {
		return cl_content;
	}
	public void setCl_content(String cl_content) {
		this.cl_content = cl_content;
	}
	@Override
	public String toString() {
		return "Class [cl_num=" + cl_num + ", board_type=" + board_type + ", cl_type=" + cl_type + ", cl_category="
				+ cl_category + ", cl_title=" + cl_title + ", teacher=" + teacher + ", cl_price=" + cl_price
				+ ", cl_info=" + cl_info + ", cl_content=" + cl_content + "]";
	}
	
	
}
