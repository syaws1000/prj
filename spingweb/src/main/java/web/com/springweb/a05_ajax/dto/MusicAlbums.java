package web.com.springweb.a05_ajax.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class MusicAlbums {
	private int albumId;
	private String albumTitle;
	private String artist;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date releaseDate;
	private String genre;
	private int price;
	public MusicAlbums() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MusicAlbums(int albumId, String albumTitle, String artist, Date releaseDate, String genre, int price) {
		super();
		this.albumId = albumId;
		this.albumTitle = albumTitle;
		this.artist = artist;
		this.releaseDate = releaseDate;
		this.genre = genre;
		this.price = price;
	}
	public int getAlbumId() {
		return albumId;
	}
	public void setAlbumId(int albumId) {
		this.albumId = albumId;
	}
	public String getAlbumTitle() {
		return albumTitle;
	}
	public void setAlbumTitle(String albumTitle) {
		this.albumTitle = albumTitle;
	}
	public String getArtist() {
		return artist;
	}
	public void setArtist(String artist) {
		this.artist = artist;
	}
	public Date getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
	
}
