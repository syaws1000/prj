package jspexp.a01_vo;
// jspexp.a01_vo.BookVO
public class BookVO {
	// 도서명(bkTitle), 가격(price), 저자(writer)로 요청값을 form으로 만들고 BookVO 
	private String bkTitle;
	private int price;
	private String writer;
	public BookVO() {
		// TODO Auto-generated constructor stub
	}
	public BookVO(String bkTitle, int price, String writer) {
		this.bkTitle = bkTitle;
		this.price = price;
		this.writer = writer;
	}
	public String getBkTitle() {
		return bkTitle;
	}
	public void setBkTitle(String bkTitle) {
		this.bkTitle = bkTitle;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
}
