package web.com.springweb.a04_mvc.a04_vo;

import java.util.Date;

public class Purchase {
	private int purchaseId; 
	private int customerId; 
	private Date purchaseDate; 
	private int purchaseAmount; 
	private String prodName;
	private int start;
	private int end;
	// prodName start end
	// purchaseId, customerId,  purchaseDate, purchaseAmount, prodName
	public Purchase() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Purchase(int purchaseId, int customerId, Date purchaseDate, int purchaseAmount, String prodName, int start,
			int end) {
		super();
		this.purchaseId = purchaseId;
		this.customerId = customerId;
		this.purchaseDate = purchaseDate;
		this.purchaseAmount = purchaseAmount;
		this.prodName = prodName;
		this.start = start;
		this.end = end;
	}
	public int getPurchaseId() {
		return purchaseId;
	}
	public void setPurchaseId(int purchaseId) {
		this.purchaseId = purchaseId;
	}
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public Date getPurchaseDate() {
		return purchaseDate;
	}
	public void setPurchaseDate(Date purchaseDate) {
		this.purchaseDate = purchaseDate;
	}
	public int getPurchaseAmount() {
		return purchaseAmount;
	}
	public void setPurchaseAmount(int purchaseAmount) {
		this.purchaseAmount = purchaseAmount;
	}
	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}

	
}
