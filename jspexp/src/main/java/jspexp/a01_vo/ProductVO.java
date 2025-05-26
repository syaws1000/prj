package jspexp.a01_vo;
// jspexp.a01_vo.ProductVO
public class ProductVO {
	private String pname;
	private int pay;
	private int count;
	public ProductVO() {
		// TODO Auto-generated constructor stub
	}
	public ProductVO(String pname, int pay, int count) {
		this.pname = pname;
		this.pay = pay;
		this.count = count;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPay() {
		return pay;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
}
