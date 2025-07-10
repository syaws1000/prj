package web.com.springweb.a06_board;

public class BoardSch {
	
	// 기본 검색
	private String subject;
	private String writer;
	// 페이징 처리를 위한 속성들
	private int count; // 전체 건수[DB]
	private int pageSize;  // 한번에 보일 데이터 건수[요청값]
	private int curPage;  // 클릭한 현재 페이지 번호[요청값]
	private int pageCount; // 전체 페이지 [알고리즘-수학적계산]
	// 페이지 처리시 마지막으로 데이터베이스 sql을 처리하기 위한 내용
	private int start; // 시작번호  [알고리즘-수학적계산]
	private int end;// 마지막 번호  [알고리즘-수학적계산]
	
	// 페이지 블럭을 위한 속성.
	private int blockSize;  // 페이지 블럭의 크기 [설정]
	private int startBlock; // 페이지 블럭의 시작번호   [알고리즘-수학적계산]
	private int endBlock;   // 페이지 블럭의 마지막번호  [알고리즘-수학적계산]
	
	
	
	public BoardSch() {
		// TODO Auto-generated constructor stub
	}
	public BoardSch(String subject, String writer) {
		super();
		this.subject = subject;
		this.writer = writer;
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
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getBlockSize() {
		return blockSize;
	}
	public void setBlockSize(int blockSize) {
		this.blockSize = blockSize;
	}
	public int getStartBlock() {
		return startBlock;
	}
	public void setStartBlock(int startBlock) {
		this.startBlock = startBlock;
	}
	public int getEndBlock() {
		return endBlock;
	}
	public void setEndBlock(int endBlock) {
		this.endBlock = endBlock;
	}
	
}
