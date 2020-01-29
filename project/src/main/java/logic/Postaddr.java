package logic;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class Postaddr {
	private int po_num;
	private String emailid;
	@NotEmpty(message="배송지 명을 입력해주세요.")
	private String po_name;
	@NotEmpty(message="수령자 명을 입력해주세요.")
	private String po_client;
	@NotEmpty(message="휴대전화 번호를 입력해주세요.")
//	@Size(min=1, max=11)
	private String po_phone;
	private String po_phone2;
	@NotEmpty(message="정확한 주소를 입력해주세요.")
	private String po_postcode;
	@NotEmpty(message="정확한 주소를 입력해주세요.")
	private String po_addr_main;
	@NotEmpty(message="정확한 주소를 입력해주세요.")
	private String po_addr_sub;
	
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
	public String getPo_postcode() {
		return po_postcode;
	}
	public void setPo_postcode(String po_postcode) {
		this.po_postcode = po_postcode;
	}
	public String getPo_addr_main() {
		return po_addr_main;
	}
	public void setPo_addr_main(String po_addr_main) {
		this.po_addr_main = po_addr_main;
	}
	public String getPo_addr_sub() {
		return po_addr_sub;
	}
	public void setPo_addr_sub(String po_addr_sub) {
		this.po_addr_sub = po_addr_sub;
	}
	
	@Override
	public String toString() {
		return "Postaddr [po_num=" + po_num + ", emailid=" + emailid + ", po_name=" + po_name + ", po_client="
				+ po_client + ", po_phone=" + po_phone + ", po_phone2=" + po_phone2 + ", po_postcode=" + po_postcode
				+ ", po_addr_main=" + po_addr_main + ", po_addr_sub=" + po_addr_sub + "]";
	}
}
