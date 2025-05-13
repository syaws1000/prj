package javaexp.a10_database.dto;

public class Car {
	private String kind;
	private int cc;
	private int mxSpeed;
	public Car() {
		// TODO Auto-generated constructor stub
	}
	public Car(String kind, int cc, int mxSpeed) {
		this.kind = kind;
		this.cc = cc;
		this.mxSpeed = mxSpeed;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public int getCc() {
		return cc;
	}
	public void setCc(int cc) {
		this.cc = cc;
	}
	public int getMxSpeed() {
		return mxSpeed;
	}
	public void setMxSpeed(int mxSpeed) {
		this.mxSpeed = mxSpeed;
	}
	
}
