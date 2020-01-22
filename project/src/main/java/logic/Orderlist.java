package logic;

public class Orderlist {
	private int od_num;
	private int cl_num;
	private int kit_num;
	private int count;
	public int getOd_num() {
		return od_num;
	}
	public void setOd_num(int od_num) {
		this.od_num = od_num;
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
		return "orderlist [od_num=" + od_num + ", cl_num=" + cl_num + ", kit_num=" + kit_num + ", count=" + count + "]";
	}
	
}
