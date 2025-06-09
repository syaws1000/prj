package a01_diexp.vo4;

import org.springframework.stereotype.Component;

@Component
public class Mart {  // 1:1관계 설정..
	private String name;
	private Product product;
	public Mart() {
	}
	public Mart(String name) {
		this.name = name;
	}
	public Mart(String name, Product product) {
		this.name = name;
		this.product = product;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	
}
