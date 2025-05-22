package jspexp.a01_vo;
// import = "jspexp.a01_vo.Order"
import java.util.Date;

public class Order {
	private int orderId;
	private String wizardName;
	private Date orderDate;
	private int orderAmount;
	public Order() {
		// TODO Auto-generated constructor stub
	}
	public Order(int orderId, String wizardName, Date orderDate, int orderAmount) {
		this.orderId = orderId;
		this.wizardName = wizardName;
		this.orderDate = orderDate;
		this.orderAmount = orderAmount;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getWizardName() {
		return wizardName;
	}
	public void setWizardName(String wizardName) {
		this.wizardName = wizardName;
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
