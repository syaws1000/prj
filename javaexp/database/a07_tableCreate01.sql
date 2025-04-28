/*
# 테이블 만들기(1단계-제약조건 제외)
1. 개요
	테이블을 만드는 과정은 데이터베이스 설계의 핵심 요소이다. oracle sql은 테이블을
	생성하면 테이블을 구조화하고 효율적으로 관리할 수 있다. 주요 요소로는 테이블명,
	열(컬럼)정의, 제약 조건, 기본값 설정 등이 있다.
2. 테이블의 구성요소에 대한 이해
	1) 테이블명 및 구조 정의
		테이블명을 정하고 각 열의 이름과 데이터 유형을 결정한다. 예를 들어,
		사원 정보를 저장할 테이블의 경우 EMPLOYEE라는 테이블명으로 테이블을 생성할
		수 있다.
	2) 컬럼명
		각 열에 대한 데이터 유형을 지정하고, 필요에 따라 크기 및 제약 조건을 설정한다.
		예를 들어, 사원번호(EMP_ID), 이름(EMP_NAME), 입사일(JOIN_DATE),
		급여(SALARY) 등을 열로 정의할 수 있다.
	3) 데이터 유형	
		오라클에서도 프로그래밍과 같이 각 컬럼명에 매칭되는 데이터 유형을 지정할 수 있다.
		기본적인 데이터 유형으로 VARCHAR2(크기)-가변형문자열, CHAR(크기) 고정형 문자열,
		NUMBER(전체크기, 소숫점이하크기), INT(정수형), DATE(날짜형) 등이 있다.
		그외도) BLOB, FILE, TIMESTAMP등 여러유형이 있다.
		주의) 데이터베이스는 BOOLEAN유형의 타입이 없지만 숫자형 0/1을 저장하면,
		일반 프로그램에서는 BOOLEAN값으로 할당하여 TRUE/FALSE를 처리할 수 있다.
3. 테이블 만들기 기본 형식
	1) 기본 만들기
		CREATE TABLE 테이블명(
			컬럼명1 데이터유형,
			컬럼명2 데이터유형
		);
	2) 복사테이블 만들기 : 기존에 있는 테이블을 기준으로해서, 구조와 이름을 차용하면서 새로운 테이블을
		만드는 것을 말한다.
		- 구조와 특정 컬럼의 데이터를 복사.
		CREATE TABLE 테이블명
		AS SELECT 복사할컬럼1, 복사할컬럼2 
			FROM 테이블명;  
			
		- 구조만 복사
		CREATE TABLE 테이블명
		AS SELECT *
			FROM 테이블명
			WHERE 1=0;   -- 1=0 비교연산식으로 FALSE가 처리되어 데이터를 가져오지 못하지만
						이 테이블의 구조를 복사할 수 있게 한다.	
**/
-- 학생의 번호와 이름, 국어, 영어, 수학 점수 데이터를 관리하는 테이블을 만들어 보자.
CREATE TABLE STUDENT(
	NO NUMBER(4,0),    --정수로 4자리만
	NAME VARCHAR2(50),   -- 문자열 50BYTE입력  한글은 한자당 3BYTE 할당되므로 13자리
	KOR NUMBER(3,0), -- 정수로 3자리
	ENG NUMBER(3,0),
	MATH NUMBER(3,0)
); -- 커서 위치 시키고 CTRL ENTER
SELECT * FROM STUDENT;
-- # 데이터 입력 형식
-- INSERT INTO 테이블명 VALUES(데이터1, 데이터2, 데이터3,...);
-- 데이터는 테이블이 만들어진 순서대로 유형에 맞게 문자열은 ''사이에, 숫자는 해당 크기 안에서 입력한다.
-- 데이터를 입력하는 명령후에는 COMMIT명령으로 확정을 한다.
INSERT INTO STUDENT VALUES(1, '홍길동', 70, 80, 90); -- 마지막에 CTRL ENTER
INSERT INTO STUDENT VALUES(2, '김길동', 80, 80, 90); -- 마지막에 CTRL ENTER
INSERT INTO STUDENT VALUES(3, '신길동', 90, 80, 100); -- 마지막에 CTRL ENTER
COMMIT; 
SELECT * FROM STUDENT;
-- 디저트 카페 주문 테이블
CREATE TABLE DESSERT_ORDER(
	ORDER_ID NUMBER, -- 주문번호를 입력 정수/실수입력가능
	CUSTOMER_NAME VARCHAR2(30), -- 주문자이름
	DESSERT_NAME VARCHAR2(50), -- 주문디저트명
	QUANTITY NUMBER, -- 주문수량
	ORDER_DATE DATE  -- 주문날짜와시간
);  -- CTRL + ENTER
SELECT * FROM DESSERT_ORDER;
-- SYSDATE : 현재 날짜와 시간을 입력할 때, 활용하는 객체
-- DUAL : 데이터를 간단하게 확인할 때, 사용하는 오라클에서 지원하는 가상테이블
SELECT SYSDATE FROM DUAL;
INSERT INTO DESSERT_ORDER VALUES(1, '김지은','딸기 쇼트케이크',2, SYSDATE);
INSERT INTO DESSERT_ORDER VALUES(2,'박민수','초코브라우니',1,SYSDATE);
INSERT INTO DESSERT_ORDER VALUES(3,'이서연','말차 티라미수',3,SYSDATE);
-- TO_DATE('입력데이터날짜','입력형식') : DATE 타입에 특정한 데이터를 입력할 때, 사용되는 함수
SELECT TO_DATE('2025-04-14','YYYY-MM-DD') FROM DUAL;
--  2025-04-14 라는 문자열은 YYYY-MM-DD 년도-월-일 형식으로 날짜를 처리하는 것을 말하고,
--  이것을 DATE형식으로 처리한다는 의미..
INSERT INTO DESSERT_ORDER VALUES(4,'정하늘','오레오 마카롱',2,
								TO_DATE('2025-04-01','YYYY-MM-DD'));

COMMIT; -- COMMIT 하기 전까지는 ROLLBACK(원복)이 가능 하다
SELECT * FROM DESSERT_ORDER;
/*

CREATE TABLE DESSERT_ORDER(
	ORDER_ID NUMBER, -- 주문번호를 입력 정수/실수입력가능
	CUSTOMER_NAME VARCHAR2(30), -- 주문자이름
	DESSERT_NAME VARCHAR2(50), -- 주문디저트명
	QUANTITY NUMBER, -- 주문수량
	ORDER_DATE DATE  -- 주문날짜와시간
);
INSERT INTO DESSERT_ORDER VALUES(1, '김지은','딸기 쇼트케이크',2, SYSDATE);
INSERT INTO DESSERT_ORDER VALUES(4,'정하늘','오레오 마카롱',2,
								TO_DATE('2025-04-01','YYYY-MM-DD'));
EX) 여행 예약 테이블
테이블명 : TRAVEL_BOOKING
컬럼명 : BOOKING_ID    NUMBER
       CUSTOMER_NAME   VARCHAR2(50)
       DESTINATION     VARCHAR2(100)
       DEPARTURE_DATE  DATE
       PRICE		   NUMBER
테이블 만들고, 날짜는 TO_DATE('2025-04-01','YYYY-MM-DD')  형식을 입력하세요..
EX) 온라인 쇼핑 장바구니 테이블
*/
CREATE TABLE TRAVEL_BOOKING(
	BOOKING_ID NUMBER,
	CUSTOMER_NAME VARCHAR2(50),
	DESTINATION VARCHAR2(100),
	DEPARTURE_DATE DATE,
	PRICE NUMBER
);
SELECT * FROM TRAVEL_BOOKING;
INSERT INTO TRAVEL_BOOKING VALUES(1000,'홍길동','LA',TO_DATE('2025-05-01','YYYY-MM-DD'), 3000000);
INSERT INTO TRAVEL_BOOKING VALUES(1001,'김길동','하와이',TO_DATE('2025-06-25','YYYY-MM-DD'), 5000000);
INSERT INTO TRAVEL_BOOKING VALUES(1002,'신길동','부탄',TO_DATE('2025-07-05','YYYY-MM-DD'), 2000000);
COMMIT;
-- EX) 온라인 쇼핑 장바구니 테이블
CREATE TABLE CART_ITEM(
	CART_ID NUMBER, -- 장바구니 식별하는 아이디를 숫자로 설정
	USER_ID NUMBER, -- 사용자명인 경우 중복 가망성이 있기에 사용자 아이디를 통해서 처리
	PRODUCT_NAME VARCHAR2(100), -- 물건명
	QUANTITY NUMBER,  -- 장바구니에 담은 물건 갯수
	PRICE_PER_ITEM NUMBER, -- 물건의 단가(가격)
	ADDED_DATE DATE       -- 장바구니에 담은 날짜/시작
);
SELECT * FROM CART_ITEM;
/*
# 날짜 처리 함수
1. SYSDATE : 현재날짜 사용시
2. TO_DATE('2025-04-05', 'YYYY-MM-DD') : 특정한 날짜 입력 
3. TO_DATE('2025-04-05 17:50, 'YYYY-MM-DD HH24:MI') : 특정한 날짜와 시간(24시간), 분 입력
 * */
SELECT SYSDATE FROM DUAL;
SELECT TO_DATE('2025-04-05', 'YYYY-MM-DD') FROM DUAL;
SELECT TO_DATE('2025-04-05 17:50', 'YYYY-MM-DD HH24:MI') FROM DUAL;
INSERT INTO CART_ITEM VALUES(1, 101,'무선 블루투스이어폰',1,79000,
						TO_DATE('2025-04-14 10:15','YYYY-MM-DD HH24:MI'));
INSERT INTO CART_ITEM VALUES(2, 102, '게이밍 키보드',1,99000,
						TO_DATE('2025-04-15 11:05','YYYY-MM-DD HH24:MI'));
SELECT * FROM CART_ITEM;
COMMIT;
/*
EX) 영화리뷰 테이블
	테이블 MOVIE_REVIEW
		REVIEW_ID 리뷰아이디 NUMBER
		MOVIE_TITLE 영화제목 VARCAHR2(100)
		REVIEWER_NAME 리뷰하는 사람이름 VARCHAR2(50)
		RATING  리뷰평가 평점 1.0~10.0까지. NUMBER(3,1) 
		REVIEW_TEXT 리뷰내용 VARCHAR2(500)
		REVIEW_DATE 리뷰날짜. DATE
	위 테이블을 만들고, 입력까지 해보세요.
		날짜 : TO_DATE('2025-04-15','YYYY-MM-DD')		.
 * */
CREATE TABLE MOVIE_REVIEW(
	REVIEW_ID NUMBER,
	MOVIE_TITLE VARCHAR2(100),
	REVIEWER_NAME VARCHAR2(50),
	RATING NUMBER(3,1),
	REVIEW_TEXT VARCHAR2(500),
	REVIEW_DATE DATE
);
SELECT * FROM MOVIE_REVIEW;
INSERT INTO MOVIE_REVIEW VALUES(1,'기생충','김유진',9.5,
	'긴장감 넘치트 스토리와 사회 풍자가 인상 깊었습니다.',TO_DATE('2025-01-01','YYYY-MM-DD'));
INSERT INTO MOVIE_REVIEW VALUES(2,'인터스텔라','박지훈',9.0,
	'음악과 영상미, 시간의 개념이 철학적으로 다가왔어요',TO_DATE('2025-02-25','YYYY-MM-DD'));
INSERT INTO MOVIE_REVIEW VALUES(3,'라라랜드','이서현',8.3,
	'색감, 음악, 그리고 결말까지 여운이 남는 영화였어요',TO_DATE('2025-03-01','YYYY-MM-DD'));
COMMIT;

/*
# 테이블 처리에서 기타 간단한 수행 명령들
1. 테이블 삭제
	DROP TABLE 테이블명;
2. 데이터의 삭제
	행단위로 삭제하기에 DELETE 이후에 컬럼을 지정하지 않아야 한다.
	DELETE FROM 테이블명 WHERE 컬럼명 = 데이터; -- 특정 조건의 데이터 삭제
	DELETE FROM 테이블명;  -- 해당 테이블의 데이터 모두 삭제
3. 데이터 수정
	UPDATE 테이블명
		SET 수정할컬럼=수정할데이터,
			...
	 WHERE 컬럼명 = 데이터;   -- 특정 데이터 기준으로 수정 처리
 * */
DROP TABLE MOVIE_REVIEW;
SELECT * FROM MOVIE_REVIEW;
DELETE FROM MOVIE_REVIEW WHERE REVIEW_ID = 3;
/*
EX) CART_ITEM 테이블삭제
	데이터삭제 및 롤백 처리..
	
 * */
DROP TABLE CART_ITEM;
SELECT * FROM CART_ITEM;
DELETE FROM CART_ITEM WHERE CART_ID = 1;

SELECT * FROM TRAVEL_BOOKING;
	UPDATE TRAVEL_BOOKING
	SET DESTINATION = '서울'
	WHERE BOOKING_ID = 1001;
COMMIT;














