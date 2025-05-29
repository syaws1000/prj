package jspexp.a11_database.dto;

import java.util.Date;

// jspexp.a11_database.dto.DessertOrder
public class DessertOrder {
	private int orderId;
	private String customerName;
	private String dessertName;
	private int quantity;
	private Date orderDate;
	public DessertOrder() {
		// TODO Auto-generated constructor stub
	}	
	public DessertOrder(int orderId, String customerName, String dessertName, int quantity, Date orderDate) {
		this.orderId = orderId;
		this.customerName = customerName;
		this.dessertName = dessertName;
		this.quantity = quantity;
		this.orderDate = orderDate;
	}




	



	public int getOrderId() {
		return orderId;
	}



	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}



	public String getCustomerName() {
		return customerName;
	}



	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}



	public String getDessertName() {
		return dessertName;
	}



	public void setDessertName(String dessertName) {
		this.dessertName = dessertName;
	}



	public int getQuantity() {
		return quantity;
	}



	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}



	public Date getOrderDate() {
		return orderDate;
	}



	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}



	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
