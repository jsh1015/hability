package logic;

import javax.validation.Valid;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class Video {
	private int v_num;
	private int cl_num;
	@NotEmpty(message="제목을 입력하세요")
	private String v_title;
	@NotEmpty(message="파일을 추가하세요")
	private String v_file;
	private MultipartFile v_fileUrl;
	
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
	public MultipartFile getV_fileUrl() {
		return v_fileUrl;
	}
	public void setV_fileUrl(MultipartFile v_fileUrl) {
		this.v_fileUrl = v_fileUrl;
	}
	
	@Override
	public String toString() {
		return "Video [v_num=" + v_num + ", cl_num=" + cl_num + ", v_title=" + v_title + ", v_file=" + v_file
				+ ", v_fileUrl=" + v_fileUrl + "]";
	}
	
}
