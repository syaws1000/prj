package web.com.springweb.a06_board;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Board { 
	// no refno  subject content writer readcnt regdte uptdte
	private int cnt;
	private int level;
	private int no; 
	private int refno; 
	private String subject; 
	private String content;
	private String writer;
	private int readcnt;
	private Date regdte; 
	private Date uptdte;
	// 게시판 등록시, 첨부파일이 여러개일 때, 설정하는 속성..
	private List<MultipartFile> reports;
	
	
	public Board() {
		// TODO Auto-generated constructor stub
	}
	public Board(int no, int refno, String subject, String content, String writer, int readcnt, Date regdte,
			Date uptdte) {
		super();
		this.no = no;
		this.refno = refno;
		this.subject = subject;
		this.content = content;
		this.writer = writer;
		this.readcnt = readcnt;
		this.regdte = regdte;
		this.uptdte = uptdte;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getRefno() {
		return refno;
	}
	public void setRefno(int refno) {
		this.refno = refno;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public int getReadcnt() {
		return readcnt;
	}
	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}
	public Date getRegdte() {
		return regdte;
	}
	public void setRegdte(Date regdte) {
		this.regdte = regdte;
	}
	public Date getUptdte() {
		return uptdte;
	}
	public void setUptdte(Date uptdte) {
		this.uptdte = uptdte;
	}
	public List<MultipartFile> getReports() {
		return reports;
	}
	public void setReports(List<MultipartFile> reports) {
		this.reports = reports;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	
}
