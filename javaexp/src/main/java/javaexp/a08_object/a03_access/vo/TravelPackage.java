package javaexp.a08_object.a03_access.vo;

public class TravelPackage {
	
	private String destination;
	private int days;
	private int price;
	public TravelPackage() {
		// TODO Auto-generated constructor stub
	}
	public TravelPackage(String destination, int days, int price) {
		this.destination = destination;
		this.days = days;
		this.price = price;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public int getDays() {
		return days;
	}
	public void setDays(int days) {
		this.days = days;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	

}
