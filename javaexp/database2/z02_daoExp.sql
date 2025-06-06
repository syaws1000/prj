-- # 1행 1열 sql dao 기능 메서드
--	1) SQL 작성
SELECT COUNT(*) COUNT FROM EMP10 WHERE DEPTNO = 10;
SELECT MAX(SAL) MXSAL FROM EMP10 WHERE JOB = 'SALESMAN';
--	2) SQL의 입력값과 결과값이 무엇인지 파악
-- 입력값 : DEPTNO : 10  => int deptno
-- 출력값 : COUNT(*): 5  => int count
-- 입력값 : JOB : SALESMAN => String job
-- 출력값 : MXSAL : 1600  ==> double mxsal 
--	3) 위 내용을 기준으로 메서드 선언
--		입력값 : 매개변수 선언
--		결과값 : 리턴값 선언
/*
public int getEmpCount(  int deptno ){
	int count = 0;
	String sql = "SELECT COUNT(*) COUNT FROM EMP10 WHERE DEPTNO = ?";
	
	return count;
}
public double getEmpMaxSal( String job ){
	double mxsal = 0;
	String sql = "SELECT MAX(SAL) MXSAL FROM EMP10 WHERE JOB = ?";
	
	return mxsal;
}	

**/
--	4) TRY CATCH 블럭 복사
--	5) pstmt.setXXX(1, XXX);  ?에 맞게 데이터 유형과 실제값할당.
--	6) rs.next() : 행단위 커서 이동  하나 행 if(rs.next()) 여러행 while(rs.next()
--	   rs.getXXX("컬럼명") : 열단위 컬럼과 타입 설정

--	7) main() 결과 확인..
-- 다중행 단일열 
--	1) SQL 작성
SELECT ENAME FROM EMP10 WHERE JOB = 'SALESMAN';
--	2) SQL의 입력값과 결과값이 무엇인지 파악
--  입력값 : JOB "SALESMAN" String job
--  출력값 : ENAME  ALLEN WARD MARTIN TURNER  ==>    List<String> enames
--	3) 위 내용을 기준으로 메서드 선언
--		입력값 : 매개변수 선언
--		결과값 : 리턴값 선언
/*
public List<String> getEnamesByJob( String job ){
	List<String> enames = new ArrayList<String>();
	String sql = "SELECT ENAME FROM EMP10 WHERE JOB = ?";
	
	
	return enames;
}
List<Integer>  List<Double>  List<String>
 * */
SELECT SAL FROM EMP10 WHERE DEPTNO = 10;
-- 입력 : int deptno
-- 출력 : List<Double>
/*
public List<Double> getSalsByDeptno(int deptno){
	List<Double> sals = new ArrayList<Double>();
	String sql = "SELECT SAL FROM EMP10 WHERE DEPTNO = ?";
	return sals;
}	
 * */
 



--	4) TRY CATCH 블럭 복사
--	5) pstmt.setXXX(1, XXX);  ?에 맞게 데이터 유형과 실제값할당.
--	6) rs.next() : 행단위 커서 이동
--	   rs.getXXX("컬럼명") : 열단위 컬럼과 타입 설정
--	7) main() 결과 확인..
/*
# 단일행다중열..
1. 다중열을 데이터가 여러가지 유형의 type이 하나의 행에 나오기에 이것을 담을 수 있자 자바의 유형은 객체형이다.
  
 * */
SELECT * FROM DEPT01 WHERE DEPTNO = 20;
-- 입력 : int deptno
-- 출력 : 20	RESEARCH	DALLAS  ==> int deptno, String dname, String loc
--      ==> class   private int deptno;
--                  private String dname;
--                  private String loc;
--          class Dept
SELECT * FROM STUDENTS WHERE STUDENT_ID =3;
-- 입력 : int studentId 
-- 출력 : int studnetId,  String studentName, String subject, int score
/*
class Student{
	private int studnetId;
	private String studentName;
	private String subject;
	private int score;
}

 * */
SELECT * FROM MAGIC_ITEMS WHERE ITEM_ID=1;
-- 입력 : int itemId
-- 출력 : int itemId, String itemName, String itemType, String itemStatus, int itemPrice
/*
# 1행 다수열 처리..

 * */
SELECT * FROM DESSERT_ORDER WHERE ORDER_ID = 1;
/*
입력값 자바로 선언: int orderId
출력값 자바로 선언: int orderId, String customerName, String dessertName, 
			   int quantity, Date orderDate ==> class DessertOrder
Dto ==> 출력값을 위해서 생성..	

public DessertOrder	getDessertOrder( int orderId){
	DessertOrder do = null;
	
	
	return do;
}	   
**/

SELECT * FROM MEAL_LOG WHERE MEAL_ID=1;
-- 입력 : int mealId
-- 출력 : int mealId, String studentName, String menu, Date mealDate

-- class MealLog
--    속성 선언..
/*
기능메서드 선언.
public MealLog getMealLog(int mealId){
	MealLog ml = null;
	String sql = "SELECT * FROM MEAL_LOG WHERE MEAL_ID=?";
	return ml;
}





 * */

CREATE TABLE FunEmployees (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    emp_dept VARCHAR2(50),
    emp_salary NUMBER
);

INSERT INTO FunEmployees (emp_id, emp_name, emp_dept, emp_salary)
VALUES (1, 'Alice', 'Engineering', 5000);

INSERT INTO FunEmployees (emp_id, emp_name, emp_dept, emp_salary)
VALUES (2, 'Bob', 'Marketing', 4500);

INSERT INTO FunEmployees (emp_id, emp_name, emp_dept, emp_salary)
VALUES (3, 'Charlie', 'Finance', 6000);

INSERT INTO FunEmployees (emp_id, emp_name, emp_dept, emp_salary)
VALUES (4, 'David', 'HR', 4800);

INSERT INTO FunEmployees (emp_id, emp_name, emp_dept, emp_salary)
VALUES (5, 'Eva', 'IT', 5500);


SELECT * FROM FUNEMPLOYEES WHERE EMP_ID=1;
/*
입력 : int empId
출력 : int empId, String empName, String emp_dept, int empSalary;

-- 기능메서드 선언..

public FunEmployees getFunEmployees(int empId){
	FunEmployees fe = null;
	String sql = "SELECT * FROM FUNEMPLOYEES WHERE EMP_ID=?";
	return fe;
	
}

 * */


CREATE TABLE SuperheroCases (
    case_id NUMBER PRIMARY KEY,      -- 사건 ID
    superhero_name VARCHAR2(50),     -- 슈퍼히어로 이름
    villain_name VARCHAR2(50),       -- 악당 이름
    case_description VARCHAR2(500),  -- 사건 설명
    case_location VARCHAR2(100),     -- 사건 발생 위치
    case_status VARCHAR2(20)         -- 사건 상태 (예: 해결됨, 진행 중, 보류 등)
);
-- 슈퍼히어로 사건 데이터 삽입
INSERT INTO SuperheroCases (case_id, superhero_name, villain_name, case_description, case_location, case_status)
VALUES (1, 'Iron Man', 'Thanos', 'Thanos has acquired all Infinity Stones and is threatening the universe.', 'New York City', 'Resolved');

INSERT INTO SuperheroCases (case_id, superhero_name, villain_name, case_description, case_location, case_status)
VALUES (2, 'Spider Man', 'Green Goblin', 'Green Goblin has taken over Oscorp Tower and is holding civilians hostage.', 'Oscorp Tower, NYC', 'In Progress');

INSERT INTO SuperheroCases (case_id, superhero_name, villain_name, case_description, case_location, case_status)
VALUES (3, 'Thor', 'Loki', 'Loki is trying to take over Asgard by stealing the Tesseract.', 'Asgard', 'Resolved');

INSERT INTO SuperheroCases (case_id, superhero_name, villain_name, case_description, case_location, case_status)
VALUES (4, 'Captain America', 'Red Skull', 'Red Skull has stolen the Cosmic Cube and is planning world domination.', 'Hydra Base, Europe', 'Resolved');

INSERT INTO SuperheroCases (case_id, superhero_name, villain_name, case_description, case_location, case_status)
VALUES (5, 'Black Widow', 'Taskmaster', 'Taskmaster is impersonating SHIELD agents to sabotage missions.', 'S.H.I.E.L.D Headquarters', 'In Progress');
SELECT * FROM SuperheroCases;
SELECT * FROM SuperheroCases WHERE SUPERHERO_NAME LIKE '%%' AND CASE_STATUS LIKE '%%' ;
/*
# 다중행다중열 처리..
1. sql
2. 입력 : String superheroName, String caseStatus
   출력 : int caseId, String superheroName, String villainName,
   	     String caseDescription, String caseLocation, String caseStatus
  다중행 List<String>, List<Integer>, List<Double>
  
  다중열
  class SuperheroCase{
  
  }
       다중열 List<SuperheroCase>
3. 기능메서드
	public List<SuperheroCase> getSuperheroCases(SuperheroCase sch){
		List<SuperheroCase> slist = new ArrayList<SuperheroCase>();
		String sql = "SELECT * FROM SuperheroCases WHERE SUPERHERO_NAME LIKE ? AND CASE_STATUS LIKE ?";
		return slist;
	}
         	     
         	              	     
         	              	              	              	     
 * */

SELECT COUNT(*) COUNT FROM EMP10 WHERE DEPTNO = 30;



SELECT * FROM STUDENT;




CREATE TABLE FavoriteMovies (
    movie_id NUMBER PRIMARY KEY,       -- 영화 ID
    movie_title VARCHAR2(100),         -- 영화 제목
    movie_genre VARCHAR2(50),          -- 장르
    fan_name VARCHAR2(50),             -- 팬 이름
    fan_hobby VARCHAR2(100),           -- 팬 취미
    movie_rating NUMBER               -- 영화 평점 (1~10)
);
-- 영화 데이터 삽입
INSERT INTO FavoriteMovies (movie_id, movie_title, movie_genre, fan_name, fan_hobby, movie_rating)
VALUES (1, '기생충', '드라마', '김영희', '영화 감상, 독서', 9);

INSERT INTO FavoriteMovies (movie_id, movie_title, movie_genre, fan_name, fan_hobby, movie_rating)
VALUES (2, '어벤져스: 엔드게임', '액션', '이철수', '게임, 운동', 10);

INSERT INTO FavoriteMovies (movie_id, movie_title, movie_genre, fan_name, fan_hobby, movie_rating)
VALUES (3, '겨울왕국', '애니메이션', '박지민', '그림 그리기, 춤', 8);

INSERT INTO FavoriteMovies (movie_id, movie_title, movie_genre, fan_name, fan_hobby, movie_rating)
VALUES (4, '기억의 밤', '스릴러', '최준호', '축구, 독서', 7);

INSERT INTO FavoriteMovies (movie_id, movie_title, movie_genre, fan_name, fan_hobby, movie_rating)
VALUES (5, '어바웃 타임', '로맨스', '홍길동', '여행, 사진 찍기', 8);

-- 추가된 10건의 영화 데이터 삽입
INSERT INTO FavoriteMovies (movie_id, movie_title, movie_genre, fan_name, fan_hobby, movie_rating)
VALUES (6, '스파이더맨: 노 웨이 홈', '액션', '정서영', '게임, 만화책 읽기', 9);

INSERT INTO FavoriteMovies (movie_id, movie_title, movie_genre, fan_name, fan_hobby, movie_rating)
VALUES (7, '어벤져스: 인피니티 워', '액션', '이승민', '운동, 영화 감상', 8);

INSERT INTO FavoriteMovies (movie_id, movie_title, movie_genre, fan_name, fan_hobby, movie_rating)
VALUES (8, '그랜드 부다페스트 호텔', '코미디', '최윤희', '여행, 미술', 8);

INSERT INTO FavoriteMovies (movie_id, movie_title, movie_genre, fan_name, fan_hobby, movie_rating)
VALUES (9, '다크 나이트', '액션', '박상민', '책 읽기, 운동', 10);

INSERT INTO FavoriteMovies (movie_id, movie_title, movie_genre, fan_name, fan_hobby, movie_rating)
VALUES (10, '인셉션', 'SF', '오준호', '사진 찍기, 영화 감상', 9);

INSERT INTO FavoriteMovies (movie_id, movie_title, movie_genre, fan_name, fan_hobby, movie_rating)
VALUES (11, '소울', '애니메이션', '이수연', '음악, 춤', 9);

INSERT INTO FavoriteMovies (movie_id, movie_title, movie_genre, fan_name, fan_hobby, movie_rating)
VALUES (12, '스타 워즈: 깨어난 포스', 'SF', '김민수', '운동, 별 보기', 8);

INSERT INTO FavoriteMovies (movie_id, movie_title, movie_genre, fan_name, fan_hobby, movie_rating)
VALUES (13, '타이타닉', '로맨스', '황보미', '여행, 요리', 9);

INSERT INTO FavoriteMovies (movie_id, movie_title, movie_genre, fan_name, fan_hobby, movie_rating)
VALUES (14, '겨울왕국 2', '애니메이션', '조아라', '그림 그리기, 춤', 8);

-- 1. SQL 작성
SELECT * FROM FavoriteMovies WHERE MOVIE_TITLE LIKE '%%' AND MOVIE_GENRE LIKE '%%';
-- 2. 입력값: String movieTitle, String MovieGenre 
--    출력값: int movieId, String MovieTitle, String movieGenre,  String fanName, String fanHobby
--           int movie_rating
-- 3. class FavoriteMovie
-- 4. jspexp.a10_database.A07_MovieDao
--    메서드 선언..
/*
public List<FavoriteMovie> getFavoriteMovieList(FavoriteMovie sch){
	List<FavoriteMovie> list = new ArrayList<FavoriteMovie>();
	String sql = "SELECT * FROM FavoriteMovies WHERE MOVIE_TITLE LIKE ? AND MOVIE_GENRE LIKE ?";
	return list;
}
아이디 movieId
제목  movieTitle
장르  movieGenre
팬이름 fanName
평점 movieRating


 * */         


