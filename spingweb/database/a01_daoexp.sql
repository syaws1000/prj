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
/*
4단계 출력 : 다수행, 다수열,  입력 : 객체형데이터 처리(여러가지 변수 설정) 
 **/
SELECT * 
FROM EMP
WHERE 1=1
AND  DEPTNO = 10 AND JOB LIKE '%%'; 

SELECT * FROM EMP WHERE ENAME LIKE '%A%' AND JOB LIKE '%A%';
/*
입력 : "%A%", "%A%" ==> String ename, String job
출력 : List (다중행), List<String>, List<Integer>, List<Double>
	  여러개의 다른유형과 컬럼을 이용해서 처리
	  1. 컬럼내용 자바로 정의 : 
	  						int empno;String ename;String job; int mgr; Date hiredate; double sal; double comm;
	  						int deptno;
	  2. class Emp{
	  						int empno;String ename;String job; int mgr; Date hiredate; double sal; double comm;
	  						int deptno;	  
	  	}		
	  List<Emp>		
@Select("SELECT * FROM EMP WHERE ENAME LIKE #{ename} AND JOB LIKE #{job}")	  
List<Emp> getEmpList(@Param("ename") String ename, @Param("job") String job);	  						
	  						
 * */
SELECT * FROM game_characters WHERE NAME LIKE '%%' AND GAME LIKE '%%';
/*
1. 입력 : String name, String game
2. 출력 : 
	int id; String name; String game, String role; String powerLevel; String introduction; Date lastUpdate
3. VO
	class GameCharacter{
		int id; String name; String game, String role; String powerLevel; String introduction; Date lastUpdate;
	}
4. 메서드 선언.
	@Select("SELECT * FROM game_characters WHERE NAME LIKE #{name} AND GAME LIKE #{game}")
	List<GameCharacter> getGameCharacters(@Param("name")String name, @Param("game")String game);
	

 * */




CREATE TABLE game_characters (
    id NUMBER PRIMARY KEY,              -- 캐릭터 고유 ID
    name VARCHAR2(100),                 -- 캐릭터 이름
    game VARCHAR2(100),                 -- 게임 이름
    role VARCHAR2(50),                  -- 캐릭터 역할 (예: 전사, 마법사 등)
    power_level NUMBER,                 -- 파워 레벨 (1~100)
    weapon VARCHAR2(100),               -- 사용 무기
    introduction VARCHAR2(500),         -- 캐릭터 소개
    last_update DATE                    -- 마지막 업데이트 날짜
);

-- 데이터 삽입
INSERT INTO game_characters (id, name, game, role, power_level, weapon, introduction, last_update) 
VALUES (1, '아이언맨', '어벤져스', '슈퍼히어로', 95, '아이언 슈트', '천재 발명가이자 기술자인 토니 스타크는 고도의 지능과 첨단 기술로 아이언맨 슈트를 착용하고 전투에 나섭니다.', TO_DATE('2025-06-01', 'YYYY-MM-DD'));

INSERT INTO game_characters (id, name, game, role, power_level, weapon, introduction, last_update) 
VALUES (2, '조커', '배트맨', '악당', 85, '크래커', '배트맨의 가장 큰 적이자, 혼돈을 사랑하는 천재 악당입니다.', TO_DATE('2025-06-02', 'YYYY-MM-DD'));

INSERT INTO game_characters (id, name, game, role, power_level, weapon, introduction, last_update) 
VALUES (3, '레오나', '리그 오브 레전드', '전사', 80, '검', '전장에서 뛰어난 전투 능력을 자랑하는 전사입니다.', TO_DATE('2025-06-03', 'YYYY-MM-DD'));

INSERT INTO game_characters (id, name, game, role, power_level, weapon, introduction, last_update) 
VALUES (4, '루피', '원피스', '해적', 92, '고무팔', '고무처럼 늘어나는 신체 능력을 지닌 해적왕을 꿈꾸는 젊은 모험가입니다.', TO_DATE('2025-06-04', 'YYYY-MM-DD'));

INSERT INTO game_characters (id, name, game, role, power_level, weapon, introduction, last_update) 
VALUES (5, '마리오', '슈퍼 마리오', '플umber', 70, '점프', '이탈리아 출신의 용감한 배관공, 마리오는 다양한 모험을 통해 왕국을 구하는 역할을 합니다.', TO_DATE('2025-06-05', 'YYYY-MM-DD'));

INSERT INTO game_characters (id, name, game, role, power_level, weapon, introduction, last_update) 
VALUES (6, '피카츄', '포켓몬', '포켓몬', 60, '전기 공격', '피카츄는 전기를 다루는 능력을 가진 귀여운 포켓몬으로, 트레이너와 함께 모험을 떠납니다.', TO_DATE('2025-06-06', 'YYYY-MM-DD'));

INSERT INTO game_characters (id, name, game, role, power_level, weapon, introduction, last_update) 
VALUES (7, '전투기계', '스타크래프트', '기계', 88, '레이저', '강력한 전투 능력을 지닌 기계 전사로, 전장에서 폭발적인 공격력을 자랑합니다.', TO_DATE('2025-06-07', 'YYYY-MM-DD'));

INSERT INTO game_characters (id, name, game, role, power_level, weapon, introduction, last_update) 
VALUES (8, '스카이워커', '스타워즈', '제다이', 98, '광선검', '전설적인 제다이 기사로, 힘을 통해 악의 세력과 싸웁니다.', TO_DATE('2025-06-08', 'YYYY-MM-DD'));

INSERT INTO game_characters (id, name, game, role, power_level, weapon, introduction, last_update) 
VALUES (9, '조로', '원피스', '검객', 85, '검', '검술의 달인으로, 독특한 삼검술을 사용하여 적을 처치합니다.', TO_DATE('2025-06-09', 'YYYY-MM-DD'));

INSERT INTO game_characters (id, name, game, role, power_level, weapon, introduction, last_update) 
VALUES (10, '헐크', '어벤져스', '슈퍼히어로', 100, '강력한 육체', '거대한 몸집과 폭발적인 힘을 지닌 슈퍼히어로로, 분노를 느낄수록 강해집니다.', TO_DATE('2025-06-10', 'YYYY-MM-DD'));








