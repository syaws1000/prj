package jspexp.a10_database.dto;
// jspexp.a10_database.dto.FavoriteMovie
public class FavoriteMovie {
	private int movieId;
	private String MovieTitle;
	private String movieGenre;
	private String fanName;	
	private String fanHobby;
	private int movieRating;
	public FavoriteMovie() {
		// TODO Auto-generated constructor stub
	}
	
	public FavoriteMovie(String movieTitle, String movieGenre) {
		MovieTitle = movieTitle;
		this.movieGenre = movieGenre;
	}

	public FavoriteMovie(int movieId, String movieTitle, String movieGenre, String fanName, String fanHobby,
			int movieRating) {
		this.movieId = movieId;
		MovieTitle = movieTitle;
		this.movieGenre = movieGenre;
		this.fanName = fanName;
		this.fanHobby = fanHobby;
		this.movieRating = movieRating;
	}
	public int getMovieId() {
		return movieId;
	}
	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}
	public String getMovieTitle() {
		return MovieTitle;
	}
	public void setMovieTitle(String movieTitle) {
		MovieTitle = movieTitle;
	}
	public String getMovieGenre() {
		return movieGenre;
	}
	public void setMovieGenre(String movieGenre) {
		this.movieGenre = movieGenre;
	}
	public String getFanName() {
		return fanName;
	}
	public void setFanName(String fanName) {
		this.fanName = fanName;
	}
	public String getFanHobby() {
		return fanHobby;
	}
	public void setFanHobby(String fanHobby) {
		this.fanHobby = fanHobby;
	}
	public int getMovieRating() {
		return movieRating;
	}
	public void setMovieRating(int movieRating) {
		this.movieRating = movieRating;
	}
	
}
