package jspexp.a11_database.dto;

public class MagicItem {
	private int itemId;
	private String itemName;
	private String itemType;
	private String itemStatus;
	private int itemPrice;
	public MagicItem() {
		// TODO Auto-generated constructor stub
	}
	public MagicItem(int itemId, String itemName, String itemType, String itemStatus, int itemPrice) {
		this.itemId = itemId;
		this.itemName = itemName;
		this.itemType = itemType;
		this.itemStatus = itemStatus;
		this.itemPrice = itemPrice;
	}
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getItemType() {
		return itemType;
	}
	public void setItemType(String itemType) {
		this.itemType = itemType;
	}
	public String getItemStatus() {
		return itemStatus;
	}
	public void setItemStatus(String itemStatus) {
		this.itemStatus = itemStatus;
	}
	public int getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}
	
}
