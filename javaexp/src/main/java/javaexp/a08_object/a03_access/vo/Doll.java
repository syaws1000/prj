package javaexp.a08_object.a03_access.vo;

public class Doll {
	private String name;
	private int price;
	private boolean isLimited;
	public Doll() {
		// TODO Auto-generated constructor stub
	}
	public Doll(String name, int price, boolean isLimited) {
		this.name = name;
		this.price = price;
		this.isLimited = isLimited;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public boolean isLimited() {
		return isLimited;
	}
	public void setLimited(boolean isLimited) {
		this.isLimited = isLimited;
	}
	
}
