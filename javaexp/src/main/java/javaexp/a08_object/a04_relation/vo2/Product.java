package javaexp.a08_object.a04_relation.vo2;
// import javaexp.a08_object.a04_relation.vo2.Product;
public class Product {
	private String name;
	private int price;
	private int cnt;
	public Product() {
		// TODO Auto-generated constructor stub
	}
	public Product(String name, int price, int cnt) {
		this.name = name;
		this.price = price;
		this.cnt = cnt;
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
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
	
}
