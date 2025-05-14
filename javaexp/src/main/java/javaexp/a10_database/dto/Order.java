package javaexp.a10_database.dto;

import java.util.Date;

public class Order {
	private String wizardName;
	private int frOrder;
	private int toOrder;
	private int orderId;
	private Date orderDate;
	private int orderAmount;
	// 클래스 != 객체   클래스를 통해 다양한 객체(필드값을 초기화)를 생성할 수 있다. 
	// 클래스 객체의 생성을 위한 도면, 실제 객체가 아니다....  
	// 클래스틑 객체의 생성 하기 위한 틀(붕어빵틀), 객체는 틀에서 나온 실체(붕어빵)
	// Order o = new Order();  // 초기값이 생성되지 않는 생성..
	public Order() {
		// TODO Auto-generated constructor stub
	}
	// sql mapping을 위한 생성자 선언과 객체 생성 
	// Order o1 = new Order("해리포터", 1000,2000);  // 이름, 시작, 마지막  : SQL의 ?? 입력값 설정의 위한 생성
	// sql = "SELECT * FROM ORDER WHERE WIZARD_NAME LIKE ? AND ORDER_AMOUNT BETWEEN ? AND ?
	public Order(String wizardName, int frOrder, int toOrder) {
		this.wizardName = wizardName;
		this.frOrder = frOrder;
		this.toOrder = toOrder;
	}
	// 데이터 결과값을 저장하기 위한 생성자 선언과 객체 생성..
	// Order o2 = new Order(rs.getString("WIZARD_NAME"), rs.getInt("ORDER_ID"), 
	//                       rs.getDate("ORDER_DATE"), rs.getInt("ORDER_AMOUNT"));
	public Order(String wizardName, int orderId, Date orderDate, int orderAmount) {
		this.wizardName = wizardName;
		this.orderId = orderId;
		this.orderDate = orderDate;
		this.orderAmount = orderAmount;
	}
	
	public Order(String wizardName, int frOrder, int toOrder, int orderId, Date orderDate, int orderAmount) {
		this.wizardName = wizardName;
		this.frOrder = frOrder;
		this.toOrder = toOrder;
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
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
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
