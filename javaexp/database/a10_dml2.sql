SELECT * FROM EMP;
/* 
# DELETE 문 - 데이터 삭제
1. DELETE 문은 테이블에서 특정 데이터를 삭제하는 데 사용합니다.
	역시 WHERE절을 반드시 사용하여 삭제 대상 행을 지정해야 하며, 생략할 경우
	모든 데이터가 삭제될 수 있습니다.
2. 주요 키워드
	DELETE FROM 테이블   특정테이블을 삭제한다는 의미인데 컬럼이나 *를 붙지 않는 이유는
					   행단위로 삭제되기 때문이다.
	WHERE 조건          특정 조건에 맞는 데이터가 삭제된다는 의미
3. 예제
	1) 사원번호가 1000인 데이터의 삭제
	DELETE FROM EMP01
	WHERE EMPNO = 1000;  - 단일 ROW삭제
	2) 부서번호가 10인 데이터의 삭제
	DELETE FROM EMP01
	WHERE DEPTNO = 10; - 다중 ROW 삭제
*/
SELECT * FROM EMP01 WHERE EMPNO=1000;
DELETE 
FROM EMP01
WHERE EMPNO = 1000;
SELECT * FROM EMP01 WHERE DEPTNO = 10;
DELETE 
FROM EMP01
WHERE DEPTNO = 10;
SELECT * FROM EMP01;
-- EX1) EMPNO 가 7902인 데이터를 삭제 하세요
SELECT * 
FROM EMP01
WHERE EMPNO = 7902;
DELETE 
FROM EMP01
WHERE EMPNO = 7902;
-- EX2) EMPNO가 NULL 이거나 DEPTNO가 NULL인 데이터를 삭제 하세요..  EMPNO = NULL ==> EMPNO = 'NULL'
--      EMPNO IS NULL OR DEPTNO IS NULL     
SELECT *
FROM EMP01
WHERE EMPNO IS NULL OR DEPTNO IS NULL;
DELETE
FROM EMP01
WHERE EMPNO IS NULL OR DEPTNO IS NULL;
SELECT * FROM EMP01;

/*
# 실무기반 테이블 생성 조회 등록 수정 삭제 처리 연습..
1. 지금까지 진행한 구성된 테이블의 생성, 조회, 등록, 수정, 삭제의 SQL 구문의 바탕으로 실무적인
	내용을 연습하고자 한다.
2. 실무 예제
	1) 주제 : 마법학교 급식 관리 시스템
		- 해그리드 선생님은 마법학교 학생들의 급식 정보를 관리하는 프로그램을 만들려고 합니다.
	2) 단계별 내용
		- 테이블만들기(시스템 설계 - 기반 작업)
		- 급식조회(조회 기능 - 관리자 화면)
		- 급식등록(입력 기능 - 선생님이 기록)
		- 급식수정(수정 기능 - 실수한 메뉴 변경)
		- 급식삭제(삭제 기능 - 잘못 등록한 정보 제거)
3. 연관관계 기반 실무 처리 포인트
	1) 1단계 - 테이블 생성 : 데이터 저장 구조 설계 - 기본키, 날짜형식, 타입선정 중요
	2) 2단계 - 조회 : 사용자 ui에서 목록 조회 - 날짜 필터, 이름 검색, 페이징 등
	3) 3단계 - 입력 : 관리자/교사가 신규 등록 - INSERT 후, COMMIT 필수
	4) 4단계 - 수정 : 실수 정정 OR 메뉴 변경 - UPDATE 시 WHERE 절 주의
	5) 5단계 - 삭제 : 잘못 등록 데이터 제거 - 실무에선 논리삭제도 많이 사용.
			
# 1단계 테이블 만들기(시스템 설계 - 기반작업)
1. 시나리오
	급식 정보를 저장할 테이블을 먼저 만들어야겠죠..
	학생 이름, 메뉴, 식사 날짜를 저장하는 구조입니다.
2. 실무 개요
	실제 시스템에서는 학생 테이블과 식사 테이블이 분리되며, 학생ID를 외래키로 연결할 수 있어야 합니다.(추후에 진행)
	여기서는 단일 테이블로 간단히 구성합니다.
3. SQL 코드로 테이블 만들기..(MEAL_LOG)
	급식 번호	: MEAL_ID(식별자)		NUMBER 숫자로 1,2,3,4...  		
	학생 이름	: STUDENT_NAME 		VARCHAR2(50)  가변적 문자열 입력 50최대 크기
	메뉴 		: MENU				VARCHAR2(100) 가변형 문자열 입력 100최대 크기
	식사 날짜	: MEAL_DATE			DATE          날짜와 시간을 같이 입력 하게..
	
	CREATE TABLE 테이블명(
		컬럼명 타입,
		컬럼명 타입,
		컬럼명 타입
	);
*/
CREATE TABLE MEAL_LOG(
	MEAL_ID NUMBER, -- 실수, 정수
	STUDENT_NAME VARCHAR2(50),
	MENU VARCHAR2(100),
	MEAL_DATE DATE
);
SELECT * FROM MEAL_LOG;
-- 급식 정보 등록
INSERT INTO meal_log values(1,'헤리 포터','부엉이 고기 스튜', 
			to_date('2025-04-20','YYYY-MM-DD'));
INSERT INTO meal_log values(2,'헬몬 그래거','버터 맥주', 
			to_date('2025-04-20','YYYY-MM-DD'));
-- ex) 입력 데이터 2개 더 처리..
INSERT INTO meal_log values(3,'론 웨슬리','호박 파이', 
			to_date('2025-04-21','YYYY-MM-DD'));
INSERT INTO meal_log values(4,'드라코 말포이','맑은 국물', 
			to_date('2025-04-21','YYYY-MM-DD'));
/*
2. 조회
 	1) 전체 조회
 	2) 날짜로 조회
 	3) 학생 이름으로 조회(키워드)
 	4) 메뉴로 조회(키워드)
**/
SELECT * FROM MEAL_LOG;
SELECT *  
FROM MEAL_LOG
WHERE MEAL_DATE = TO_DATE('2025-04-21','YYYY-MM-DD');
SELECT *
FROM MEAL_LOG
WHERE STUDENT_NAME LIKE '%헬몬%';
SELECT *
FROM MEAL_LOG
WHERE MENU LIKE '%맥주%';
-- 수정 : 이름과 날짜로 특정한 메뉴를 수정 처리
UPDATE MEAL_LOG
SET MENU = '치킨 너겟'
WHERE STUDENT_NAME='헤리 포터';
SELECT * FROM MEAL_LOG;
--  급식 날짜 변경
UPDATE MEAL_LOG
	SET MEAL_DATE = TO_DATE('2025-04-22','YYYY-MM-DD')
WHERE MEAL_ID = 1;
-- EX) 위 내용과 동일하게 다른 학생의 이름으로 메뉴를 변경하고, MEAL_ID = 2로 급식 날짜를 변경하세요..
SELECT * FROM MEAL_LOG;
/*
# 수정 구문 형식
UPDATE 테이블명
	SET 변경할컬럼1 = 변경할데이터,
		변경할컬럼2 = 변경할데이터
		..
 WHERE 조건		
 * */
SELECT *
FROM MEAL_LOG
WHERE STUDENT_NAME = '헬몬 그래거';
UPDATE MEAL_LOG
   SET MENU = '오뎅탕'
WHERE STUDENT_NAME = '헬몬 그래거';
UPDATE MEAL_LOG
   SET MEAL_DATE = TO_DATE('2025-04-22','YYYY-MM-DD')
WHERE MEAL_ID = 3;

-- 급식고유 번호 기준으로 삭제 처리
SELECT * 
FROM MEAL_LOG
WHERE MEAL_ID = 4;
DELETE
FROM MEAL_LOG
WHERE MEAL_ID = 4;
SELECT * FROM MEAL_LOG;
SELECT * 
FROM MEAL_LOG
WHERE MEAL_DATE = TO_DATE('2025-04-22','YYYY-MM-DD');
DELETE
FROM MEAL_LOG
WHERE MEAL_DATE = TO_DATE('2025-04-22','YYYY-MM-DD');
-- EX) STUDENT_NAME '드라코 말포이' 기준으로 삭제,
--     MEAL_DATE 기준으로 2025-04-20 삭제
SELECT *
FROM MEAL_LOG;
WHERE STUDENT_NAME = '드라코 말포이';
DELETE FROM MEAL_LOG
WHERE STUDENT_NAME = '드라코 말포이';
SELECT *
FROM MEAL_LOG
WHERE MEAL_DATE = TO_DATE('2025-04-20','YYYY-MM-DD');
DELETE FROM MEAL_LOG
WHERE MEAL_DATE = TO_DATE('2025-04-20','YYYY-MM-DD');
SELECT * FROM MEAL_LOG;






