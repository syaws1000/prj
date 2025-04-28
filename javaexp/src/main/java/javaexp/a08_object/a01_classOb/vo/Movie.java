package javaexp.a08_object.a01_classOb.vo;

import java.util.Date;
// 마지막에 ctrl+s(저장) 두세번..(외부에서 호출시 에러나면)
public class Movie {
	private String title;
	private String director;
	private Date releaseDate; // ctrl+shift+o import
	public Movie() {
		// TODO Auto-generated constructor stub
	}
	public Movie(String title, String director, Date releaseDate) {
		this.title = title;
		this.director = director;
		this.releaseDate = releaseDate;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public Date getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}
	
}
