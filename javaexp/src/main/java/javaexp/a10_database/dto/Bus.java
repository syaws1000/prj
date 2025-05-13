package javaexp.a10_database.dto;

public class Bus {
	private String no;
	private String destin;
	public Bus() {
		// TODO Auto-generated constructor stub
	}
	public Bus(String no, String destin) {
		this.no = no;
		this.destin = destin;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getDestin() {
		return destin;
	}
	public void setDestin(String destin) {
		this.destin = destin;
	}
	
}
