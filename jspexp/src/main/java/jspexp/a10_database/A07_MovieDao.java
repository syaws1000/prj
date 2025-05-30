package jspexp.a10_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jspexp.a10_database.dto.Emp;
import jspexp.a10_database.dto.FavoriteMovie;

// jspexp.a10_database.A07_MovieDao
public class A07_MovieDao {
	public List<FavoriteMovie> getFavoriteMovieList(FavoriteMovie sch){
		List<FavoriteMovie> list = new ArrayList<FavoriteMovie>();
		String sql = "SELECT * FROM FavoriteMovies "
				+ "WHERE MOVIE_TITLE LIKE ? "
				+ "AND MOVIE_GENRE LIKE ?";


		
		// a19_empSchList.jsp  사원명:[    ] 직책:[    ]  [검색]
		try( Connection con = DB.con();
			 PreparedStatement pstmt = con.prepareStatement(sql);
				){
			if(sch.getMovieTitle()==null) sch.setMovieTitle("");
			if(sch.getMovieGenre()==null) sch.setMovieGenre("");
			pstmt.setString(1, "%"+sch.getMovieTitle()+"%");
			pstmt.setString(2, "%"+sch.getMovieGenre()+"%");
			try(ResultSet rs = pstmt.executeQuery()){
				// FavoriteMovie(int movieId, String movieTitle,String movieGenre, 
				//String fanName, String fanHobby,int movieRating) 

				while(rs.next()) { // 다중행일때, while 사용  
					// rs.getInt(1)  SELECT MOVIE_ID
					list.add(new FavoriteMovie(rs.getInt(1), rs.getString(2), 
							rs.getString(3),rs.getString(4),
							rs.getString(5), rs.getInt(6)));
				}
				
				System.out.println("데이터 로딩 완료:"+list.size());				
			}
			

		}catch(SQLException e) {
			System.out.println("DB처리 에러:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("기타 에러:"+e.getMessage());
		}
		
		
		return list;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
