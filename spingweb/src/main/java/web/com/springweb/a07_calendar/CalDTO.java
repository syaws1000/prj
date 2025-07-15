package web.com.springweb.a07_calendar;

import java.util.List;

public class CalDTO {
	private String msg;
	private List<Calendar> list;
	
	
	
	public CalDTO() {
		// TODO Auto-generated constructor stub
	}
	public CalDTO(String msg, List<Calendar> list) {
		this.msg = msg;
		this.list = list;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public List<Calendar> getList() {
		return list;
	}
	public void setList(List<Calendar> list) {
		this.list = list;
	}
	
	
	
}
