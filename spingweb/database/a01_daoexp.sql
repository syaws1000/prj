SELECT * FROM EMP10;
/*
3단계 출력 : 1행, 다수열,  입력 : 객체형데이터 처리(여러가지 변수 설정)
 * */
SELECT * FROM EMP10 WHERE empno = 1369;
/*
출력 유형 : int empno, String ename, String job, int mgr, Date hiredate, double sal, double comm, int deptno
		  여러데이터유형으로 입력을 처리 해야함. ==> 객체 즉, 클래스 선언이 필요
		  class Emp{
		  	 private int empno;
		  	 ...
		  }
입력 유형 : int empno

# 메서드 선언.
@Select("SELECT * FROM EMP10 WHERE empno = #{empno}")
Emp getEmp(@Param("empno") int empno);

		  
 * */

SELECT movie_id movieId, movie_title movieTitle, genre, release_year releaseYear, rating FROM MOVIES WHERE MOVIE_ID=2;
/*
1. 출력  int movieId; String movieTitle; String genre; int releaseYear; double rating;
2. 입력  int movieId;
	class Movie

3. 메서드 선언..
@Select("SELECT * FROM EMP10 WHERE empno = #{empno}")
Emp getEmp(@Param("empno") int empno);
Select("SELECT * FROM MOVIES WHERE MOVIE_ID=#{movieId}")
Movie getMovie(@Parma("movieId") int movieId);

 
   
 * */
