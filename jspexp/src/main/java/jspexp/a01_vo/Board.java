package jspexp.a01_vo;
// import="jspexp.a01_vo.Board"
public class Board {
	private int no; 
	private String title; 
	private String writer; 
	private String writeDate;
    private int readCnt;
	public Board() {
		// TODO Auto-generated constructor stub
	}
	public Board(int no, String title, String writer, String writeDate, int readCnt) {
		this.no = no;
		this.title = title;
		this.writer = writer;
		this.writeDate = writeDate;
		this.readCnt = readCnt;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}
	public int getReadCnt() {
		return readCnt;
	}
	public void setReadCnt(int readCnt) {
		this.readCnt = readCnt;
	}
    
}
