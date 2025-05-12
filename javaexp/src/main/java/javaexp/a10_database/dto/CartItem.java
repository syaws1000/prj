package javaexp.a10_database.dto;

import java.util.Date;

public class CartItem {
	private String cartId; // snake case(CART_ID)를 자바에서 사용시 camel case로
	private int userId;
	private String productName;
	private int quantity;
	private int pricePerItem;
	private Date addedDate;
	public CartItem() {
		// TODO Auto-generated constructor stub
	}
	public CartItem(String cartId, int userId, String productName, int quantity, int pricePerItem, Date addedDate) {
		this.cartId = cartId;
		this.userId = userId;
		this.productName = productName;
		this.quantity = quantity;
		this.pricePerItem = pricePerItem;
		this.addedDate = addedDate;
	}
	public String getCartId() {
		return cartId;
	}
	public void setCartId(String cartId) {
		this.cartId = cartId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPricePerItem() {
		return pricePerItem;
	}
	public void setPricePerItem(int pricePerItem) {
		this.pricePerItem = pricePerItem;
	}
	public Date getAddedDate() {
		return addedDate;
	}
	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}
	

}
