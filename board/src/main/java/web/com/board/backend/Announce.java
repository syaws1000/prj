package web.com.board.backend;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Announce {
	// boardId parentId  title  content author createAt updatedAt status
	//    commentCount
	private int cnt;
	private int level;
    private int boardId;
    private String title;
    private String content;
    private int parentId;
    private String author;
    private Date createdAt;
    private Date updatedAt;
    private String status;
    private int  views;
    private int commentCount;
    private List<MultipartFile> reports;
    
    
	public Announce() {
		// TODO Auto-generated constructor stub
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


	public int getBoardId() {
		return boardId;
	}


	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public int getParentId() {
		return parentId;
	}


	public void setParentId(int parentId) {
		this.parentId = parentId;
	}


	public String getAuthor() {
		return author;
	}


	public void setAuthor(String author) {
		this.author = author;
	}


	public Date getCreatedAt() {
		return createdAt;
	}


	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}


	public Date getUpdatedAt() {
		return updatedAt;
	}


	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public int getViews() {
		return views;
	}


	public void setViews(int views) {
		this.views = views;
	}


	public int getCommentCount() {
		return commentCount;
	}


	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}


	public List<MultipartFile> getReports() {
		return reports;
	}


	public void setReports(List<MultipartFile> reports) {
		this.reports = reports;
	}


}
