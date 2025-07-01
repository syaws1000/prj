-- 기본적인 sql 구문 정의 및 처리 방법
SELECT * FROM EMP;
-- 전체 내용 검색.. 아래내용을 출력 내용
SELECT * FROM DEPT;
-- 조건 검색
SELECT * FROM DEPT 
WHERE DEPTNO = 10;
-- 부서번호 10인 데이터 검색 처리..
-- EX) 사원번호 7369인 데이터를 검색해보세요..
SELECT * FROM EMP
WHERE EMPNO = 7369;
-- EX) 사원명(ENAME)이 'SMITH'인 데이터를 검색해보세요
SELECT * FROM EMP e 
WHERE ENAME = 'SMITH';

SELECT * FROM EMP;
-- 여러가지 조건 AND (조건이 모두 맞을 때), 조건 OR는 둘중에 하나만 맞을 때..
-- 부서번호(DEPTNO)가 10이고, 급여가 3000미만인 사원 검색
SELECT * FROM EMP
WHERE DEPTNO = 10
AND SAL < 3000;

SELECT * FROM EMP
WHERE DEPTNO = 10
OR SAL < 3000;
--EX)  JOB이 'SALESMAN'이고 SAL이 2000 미만인 사원을 출력하세요
SELECT * FROM EMP
WHERE JOB = 'SALESMAN'
AND SAL < 2000;

SELECT EMPNO, ENAME, JOB
FROM EMP;
-- 사원번호, 사원명, 직책의 컬럼을 보고자 할 때..
SELECT * FROM EMP;
--EX) 사원명(ENAME), 관리자번호(MGR), 급여(SAL), 입사일(HIREDATE)의 컬럼만 보고자 할때.. 처리 내용
SELECT ENAME, MGR, SAL, HIREDATE
FROM EMP;
SELECT ENAME, JOB, DEPTNO
FROM EMP
WHERE ENAME LIKE '%A%'  -- 앞뒤에 'A' 가 포함되어 있으면 검색
AND JOB LIKE '%M%';  -- '%%' 전체 처리되는 내용 '%M%' M이 포함되어 있으면 검색
-- EX1) 부서정보(DEPT)  부서명(DNAME), 부서위치(LOC)를  위 내용과 같이 키워드 검색해서 출력하세요..
--     둘다 'A'를 포함하는 경우 출력
SELECT *
FROM DEPT d 
WHERE DNAME LIKE '%A%'
AND LOC LIKE '%A%';
SELECT * FROM DEPT; 
-- EX2) ENAME을 키워드 검색하고 급여를 2000 에서 5000사이 검색하세요..
SELECT * 
FROM EMP
WHERE ename LIKE '%A%'
AND sal BETWEEN 2000 AND 5000;

CREATE TABLE emp20
AS SELECT empno, ename, job, sal, deptno
FROM emp;

SELECT * FROM emp20;
-- 테이블의 구조 변경 명령어
ALTER TABLE emp20
MODIFY( ename varchar2(50), job varchar2(50) );

-- 등록 기본 문장
INSERT INTO emp20 values(1000, '홍길동','사원',3500,10);
--ex) 다음과 같이 데이터를 등록하세요 2000, '마길동','대리', 4000, 20
INSERT INTO emp20 values(2000,'마길동','대리',4000,20);

-- 수정 문장
UPDATE emp20
	SET ename='홍길동',
	    job = '과장',
	    sal = 5000
  WHERE empno = 7369;
-- 사원번호 7369인 데이터를 ename, job, sal 변경처리
SELECT * FROM EMP20;
-- EX) 7499인 사원의 사원명(ENAME)을 마길동, 직책(JOB)은 팀장, 부서번호(DEPTNO)는 40으로 변경하세요..
UPDATE EMP20
   SET ENAME = '마길동',
       JOB = '팀장',
       DEPTNO = 40
 WHERE EMPNO = 7499;



-- 게임 순위 테이블 생성
CREATE TABLE game_rank (
    player_id NUMBER PRIMARY KEY,
    player_name VARCHAR2(50) NOT NULL,
    game_score NUMBER
);

-- 데이터 입력
INSERT INTO game_rank (player_id, player_name, game_score) VALUES (1, '앨리스', 500);
INSERT INTO game_rank (player_id, player_name, game_score) VALUES (2, '밥', 600);
INSERT INTO game_rank (player_id, player_name, game_score) VALUES (3, '찰리', 450);
INSERT INTO game_rank (player_id, player_name, game_score) VALUES (4, '데이빗', 700);
SELECT * FROM GAME_RANK;
-- EX) 앨리스의 게임스코어 를 확인하고자 한다 SQL을 작성해보세요..
SELECT NVL( MAX(GAME_SCORE),0 ) FROM GAME_RANK WHERE PLAYER_NAME = '';
;
/*
입력 : "앨리스" ==> String playerName ==> @Param("playerName") String playerName  (요청값으로 전달될 내용 설정)
출력 : 500 ==> int  (메서드의 리턴유형)
@Select("SELECT GAME_SCORE FROM GAME_RANK WHERE PLAYER_NAME = #{playerName}")
int getScore(@Param("playerName") String playerName);

ex) 다되었으면 바로밑 동물명으로 사는 곳 처리하는 dao 처리하고, 처리한 소스코드 전달해주세요..

 * */

/*
위 내용을 웹화면에서 처리할려면
게이머이름[    ] [게임스코어확인] ==> 게임이름을 입력한 후, 게임스코어확인을 클릭하면
해당 게이머의 이름을 서버에 요청값을 전달하고, 그 결과값을 받아서 아래에
점수 : @@@  출력한다.

이 때, 요청값으로 입력한 게이머이름이 전달하는 방식을 QUERY STRING 즉,  ?gameName=앨리스
이고, 이것을 controller단에서는 @RequestParam("gameName") String gameName으로 받아서
service, dao단에 넘겨
SELECT GAME_SCORE
FROM GAME_RANK
WHERE PLAYER_NAME = #{gameName}   으로 전달하면,
다시 결과값으로 
int getScore(@Param("gameName") string gameName);

500이란 점수를 int로 다시 service 다시 controller의 model 이름으로 
d.addAttribute("gameScore", service.getScore(gameName));
전달하면.. 화면단에서는 

${gameScore}로 결과 내용이 처리되어 진다..  이것이 웹 프로그래밍이 기본적인 DB 처리 방식이라고 할 수 있다.
 
# 개발순서
1. 초기 화면 구성
	controller - view(요청값 form name="gameName") 설정
2. dao 단 처리
	sql
	입력 - 매개변수
	결과 - 리턴값
3. service
4. controller모델 데이터 처리..

	
   
         
 * */



-- 동물원 동물 정보 테이블 생성
CREATE TABLE zoo_animals (
    animal_id NUMBER PRIMARY KEY,
    animal_name VARCHAR2(50) NOT NULL,
    species VARCHAR2(50),
    age NUMBER,
    location VARCHAR2(100)
);

-- 데이터 입력
INSERT INTO zoo_animals (animal_id, animal_name, species, age, location) VALUES (1, '사자', 'Panthera leo', 5, '아프리카');
INSERT INTO zoo_animals (animal_id, animal_name, species, age, location) VALUES (2, '펭귄', 'Spheniscidae', 3, '남극');
INSERT INTO zoo_animals (animal_id, animal_name, species, age, location) VALUES (3, '코끼리', 'Loxodonta africana', 10, '아프리카');
SELECT * FROM zoo_animals;
-- 동물의 이름(animalName)을 입력 했을 때, 사는 곳(location)의 화면을 처리하는 controller/view 요청 처리를 해보세요.
-- A02_AnimalController.java   a02_animal.jsp

-- ex) 다되었으면 바로밑 동물명으로 사는 곳 처리하는 dao 처리하고, 처리한 소스코드 전달해주세요..
-- sql
SELECT * FROM zoo_animals;
SELECT LOCATION FROM ZOO_ANIMALS WHERE ANIMAL_NAME='사자';

-- dao에 들어갈 메서드 선언
/*
@Select("SELECT LOCATION FROM ZOO_ANIMALS WHERE ANIMAL_NAME=#{animalName}")
String getLocation(@Param("animalName") String animalName);


 * */


-- 음식 주문 테이블 생성
CREATE TABLE food_orders (
    order_id NUMBER PRIMARY KEY,
    customer_name VARCHAR2(50) NOT NULL,
    order_date DATE,
    item_ordered VARCHAR2(100),
    quantity NUMBER,
    total_price NUMBER
);
--
SELECT item_ordered FROM food_orders WHERE customer_name = '이브';
-- 이름:[    ] [주문내역확인]
-- A03_FoodController.java   a03_food.jsp
-- 요청값: customerName, 모델데이터: itemOrdered
-- 1. Controller 생성..
-- 2. View 단 처리..
-- 데이터 입력
INSERT INTO food_orders (order_id, customer_name, order_date, item_ordered, quantity, total_price) 
VALUES (1, '이브', TO_DATE('2025-06-30', 'YYYY-MM-DD'), '피자', 2, 30);
INSERT INTO food_orders (order_id, customer_name, order_date, item_ordered, quantity, total_price) 
VALUES (2, '밥', TO_DATE('2025-06-29', 'YYYY-MM-DD'), '버거', 3, 25);
INSERT INTO food_orders (order_id, customer_name, order_date, item_ordered, quantity, total_price) 
VALUES (3, '앨리스', TO_DATE('2025-06-28', 'YYYY-MM-DD'), '샐러드', 1, 15);
SELECT item_ordered FROM food_orders WHERE customer_name = '이브';
/*
입력: "이브" ==> String customerName ==> @Param("customerName") String customerName
출력: "파자" ==> String
메서드 선언..
@Select("SELECT item_ordered FROM food_orders WHERE customer_name = #{customerName}")
String getItemOrdered(@Param("customerName") String customerName );
 * 
 * */
























