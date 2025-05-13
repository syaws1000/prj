package javaexp.a10_database.dto;

import java.sql.Date;

public class Order {
	private String wizardName;
	private int frOrder;
	private int toOrder;
	private String orderId;
	private Date orderDate;
	private int orderAmount;
	public Order() {
		// TODO Auto-generated constructor stub
	}
	public Order(String wizardName, int frOrder, int toOrder) {
		this.wizardName = wizardName;
		this.frOrder = frOrder;
		this.toOrder = toOrder;
	}
	public Order(String wizardName, String orderId, Date orderDate, int orderAmount) {
		this.wizardName = wizardName;
		this.orderId = orderId;
		this.orderDate = orderDate;
		this.orderAmount = orderAmount;
	}
	public String getWizardName() {
		return wizardName;
	}
	public void setWizardName(String wizardName) {
		this.wizardName = wizardName;
	}
	public int getFrOrder() {
		return frOrder;
	}
	public void setFrOrder(int frOrder) {
		this.frOrder = frOrder;
	}
	public int getToOrder() {
		return toOrder;
	}
	public void setToOrder(int toOrder) {
		this.toOrder = toOrder;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public int getOrderAmount() {
		return orderAmount;
	}
	public void setOrderAmount(int orderAmount) {
		this.orderAmount = orderAmount;
	}
	
}
