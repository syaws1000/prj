package web.com.springweb.a03_database.vo;

public class Movie {
	private int movieId; 
	private String movieTitle; 
	private String genre; 
	private int releaseYear; 
	private double rating;
	public Movie() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Movie(int movieId, String movieTitle, String genre, int releaseYear, double rating) {
		super();
		this.movieId = movieId;
		this.movieTitle = movieTitle;
		this.genre = genre;
		this.releaseYear = releaseYear;
		this.rating = rating;
	}
	public int getMovieId() {
		return movieId;
	}
	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}
	public String getMovieTitle() {
		return movieTitle;
	}
	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public int getReleaseYear() {
		return releaseYear;
	}
	public void setReleaseYear(int releaseYear) {
		this.releaseYear = releaseYear;
	}
	public double getRating() {
		return rating;
	}
	public void setRating(double rating) {
		this.rating = rating;
	}
	
}
