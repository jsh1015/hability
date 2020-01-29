package logic;

public class Kit {
	private int kit_num;
	private int cl_num;
	private String kit_name;
	private String kit_box;
	private int kit_price;
	public int getKit_num() {
		return kit_num;
	}
	public void setKit_num(int kit_num) {
		this.kit_num = kit_num;
	}
	public int getCl_num() {
		return cl_num;
	}
	public void setCl_num(int cl_num) {
		this.cl_num = cl_num;
	}
	public String getKit_name() {
		return kit_name;
	}
	public void setKit_name(String kit_name) {
		this.kit_name = kit_name;
	}
	public String getKit_box() {
		return kit_box;
	}
	public void setKit_box(String kit_box) {
		this.kit_box = kit_box;
	}
	public int getKit_price() {
		return kit_price;
	}
	public void setKit_price(int kit_price) {
		this.kit_price = kit_price;
	}
	@Override
	public String toString() {
		return "Kit [kit_num=" + kit_num + ", cl_num=" + cl_num + ", kit_name=" + kit_name + ", kit_box=" + kit_box
				+ ", kit_price=" + kit_price + "]";
	}
	
}
