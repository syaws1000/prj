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
SELECT * FROM EMP10;
SELECT ENAME FROM EMP10 WHERE EMPNO =1499;
--입력값 : 1499  int empno
--출력값 : AllEN String
/*
@Select("SELECT ENAME FROM EMP10 WHERE EMPNO =#{empno}")
String getEnameByEmpno(@Param("empno") int empno);


 * */

-- 2단계 출력 : 다수행 1열, 입력 : 변수형데이터(2개 시작/마지막)
SELECT ENAME FROM EMP10 WHERE SAL BETWEEN 1000 AND 3000;
/*
1. 결과 값 유형 : List<Double>  
	실수형리스트 : List<Double>
	정수형리스트 : List<Integer>
	날짜형리스트 : List<Date>
	문자열리스트 : List<String>
	객체형  : List<Object>
	
출력 : List<String>
입력 : int start, int end

@Select("SELECT ENAME FROM EMP10 WHERE SAL BETWEEN #{start} AND #{end}")
List<String> getEnameByEmpno(@Param("start") int start, @Param("end") int end);
 * */







