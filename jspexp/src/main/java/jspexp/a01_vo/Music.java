package jspexp.a01_vo;
// jspexp.a01_vo.Music
public class Music {
// String title), 가수명(String singer), 발매연도(int pubYear
	private String title;
	private String singer;
	private int pubYear;
	public Music() {
		// TODO Auto-generated constructor stub
	}
	public Music(String title, String singer, int pubYear) {
		this.title = title;
		this.singer = singer;
		this.pubYear = pubYear;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	public int getPubYear() {
		return pubYear;
	}
	public void setPubYear(int pubYear) {
		this.pubYear = pubYear;
	}
	
}
