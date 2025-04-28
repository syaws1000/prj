SELECT * FROM EMP;
/*
# 오라클 함수
1. ORACLE의 함수는 데이터베이스 내에서 데이터를 처리하고 계산하는 데, 중요한 역할을 합니다.
SQL 함수는 데이터를 변환하거나 계산하여 원하는 결과를 도출하는 데 사용합니다. 함수는 크게 집계합수,
문자열함수, 수학함수, 날짜 함수 등으로 구분할 수 있습니다.
	1) 스칼라 함수 : 하나의 입력값을 받아서 하나의 출력 값을 반환하는 함수 입니다.
		예를들어 UPPER, LOWER, ROUND, TRUNC 등이 있다.
	2) 집계 함수 : 여러 개의 입력 값들을 처리하여 하나의 출력 값을 반환하는 함수입니다.
		예를들어 SUM, COUNT, AVG, MAX, MIN 등이 있다.
2. ORACLE 함수의 분류 기준
	1) 문자열 함수(String Functions) : 문자열 데이터를 처리하는 함수입니다. 주로 텍스트의 조작,
		변환 등을 수행합니다.
		ex) UPPER, LOWER, SUBSTR, CONCAT
	2) 수학 함수(Mathematical Functions) : 숫자 데이터를 처리하는 함수로, 숫자 계산이나 반올림
		내림 등을 수행합니다.
		ex) ROUND, CEIL, FLOOR, MOD
	3) 날짜 함수(Date Functions) : 날짜와 시간을 처리하는 함수입니다. 날짜 간의 차이 계산, 날짜
		포맷 조정 등을 수행합니다.
		ex) SYSDATE, TO_DATE, ADD_MONTHS, MONTHS_BETWEEN
	4) 집계 함수(Aggregate Functions) : 여러 개의 값들을 처리하여 하나의 결과값을 반환하는 함수
		ex) SUM, COUNT, AVG, MAX, MIN
	5) 변환 함수(Conversion Functions) : 데이터 타입을 변환하는 함수입니다.
		ex) TO_NUMBER, TO_CHAR, TO_DATE
		
 * */
/* 
# 그룹함수
1. 테이블의 전체 행을 하나 이상의 컬럼을 기준으로 그룹화하여 그룹별로 결과를 출력하는 함수를 말한다.
2. 그룹함수는 통계적인 결과를 출력하는데 사용된다.
3. 형식
	SELECT 그룹할 컬럼, 그룹함수(대상컬럼)
	FROM 테이블
	GROUP BY 그룹할컬럼
	HAVING 그룹함수의 결과기준으로 조건처리
4. 그룹함수의 종류(NULL 제외)
	COUNT() : 행의 갯수
	MAX() : 행의 최대값
	MIN() : 행의 최소값
	SUM() : 모든 행의 합
	AVG() : 행의 평균값
	STDDEV() : 표준편차
	VARIANCE() : 분산
**/
SELECT COUNT(EMPNO)
FROM EMP;
SELECT COMM
FROM EMP;
SELECT COUNT(COMM)
FROM EMP;


-- COUNT(컬럼명) : 해당 컬럼의 데이터 건수를 가져오는데, NULL은 제외 한다.
SELECT COUNT(EMPNO) "사원번호 데이터 갯수", COUNT(COMM) "보너스 갯수"
FROM EMP;
SELECT COUNT(*) "전체 사원정보 건수"
FROM EMP;
-- EX) MGR(관리자)의 데이터 건수와 SAL의 데이터 건수를 확인하세요..
SELECT COUNT(*)
FROM EMP;
SELECT COUNT(MGR) "관리자건수", COUNT(SAL) "급여건수"
FROM EMP;

SELECT DEPTNO, EMPNO
FROM EMP
ORDER BY DEPTNO, EMPNO;
-- 부서별로 통계치를 처리하고자 할 때, 그룹함수의 형식으로 사용된다.
-- 부서별로 사원번호의 갯수를 가져오고자 할 때, 아래 형식으로 처리
/*
SELECT 그룹할컬럼, 그룹함수(대상컬럼)
FROM 테이블명
GROUP BY 그룹할컬럼
 * */
SELECT DEPTNO "부서번호", COUNT(EMPNO) "사원번호"
FROM EMP
GROUP BY DEPTNO
ORDER BY DEPTNO;

SELECT JOB, SAL
FROM EMP
ORDER BY JOB, SAL;
-- EX) 직책별(JOB)로 급여컬럼(SAL)의 데이터 건수를 출력하세요.
SELECT JOB, COUNT(SAL) "급여건수"
FROM EMP
GROUP BY JOB
ORDER BY JOB;
SELECT JOB, COUNT(*) "사원정보건수"
FROM EMP
GROUP BY JOB
ORDER BY JOB;


SELECT JOB, COUNT(*) "직책별건수", MAX(SAL) "급여최대치", MIN(SAL) "급여최소", AVG(SAL) "급여평균" 
FROM EMP
GROUP BY JOB
ORDER BY JOB;
SELECT JOB, SAL
FROM EMP 
ORDER BY JOB, SAL;
-- EX) 부서별(DEPTNO), 최대급여, 최소급여, 평균급여를 출력해보세요
SELECT DEPTNO, SAL
FROM EMP
ORDER BY DEPTNO, SAL;
SELECT DEPTNO, MAX(SAL) "최대급여", MIN(SAL) "최소급여", AVG(SAL) "평균급여"
FROM EMP
GROUP BY DEPTNO
ORDER BY DEPTNO;

-- 날짜형 데이터에서의 그룹처리..
SELECT ENAME, HIREDATE
FROM EMP
ORDER BY HIREDATE;
SELECT MIN(HIREDATE) "가장먼저입사일", MAX(HIREDATE) "최후입사일"
FROM EMP;
SELECT DEPTNO, MIN(HIREDATE) "최초입사일", MAX(HIREDATE) "최후입사일"
FROM  EMP
GROUP BY DEPTNO
ORDER BY DEPTNO;
/*EX) 직책별(JOB)로 최초입사일, 최후입사일을 출력하세요*/
SELECT JOB, MIN(HIREDATE) "최초입사일", MAX(HIREDATE) "최후입사일"
FROM EMP
GROUP BY JOB
ORDER BY JOB;


CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    wizard_name VARCHAR2(50),
    order_date DATE,
    order_amount INT
);

INSERT INTO orders (order_id, wizard_name, order_date, order_amount) 
VALUES (1, 'Harry Potter', TO_DATE('2025-04-01', 'YYYY-MM-DD'), 100);
INSERT INTO orders (order_id, wizard_name, order_date, order_amount) 
VALUES (2, 'Harry Potter', TO_DATE('2025-04-03', 'YYYY-MM-DD'), 150);
INSERT INTO orders (order_id, wizard_name, order_date, order_amount) 
VALUES (3, 'Hermione Granger', TO_DATE('2025-04-01', 'YYYY-MM-DD'), 200);
INSERT INTO orders (order_id, wizard_name, order_date, order_amount) 
VALUES (4, 'Hermione Granger', TO_DATE('2025-04-02', 'YYYY-MM-DD'), 180);
INSERT INTO orders (order_id, wizard_name, order_date, order_amount) 
VALUES (5, 'Ron Weasley', TO_DATE('2025-04-02', 'YYYY-MM-DD'), 120);
INSERT INTO orders (order_id, wizard_name, order_date, order_amount) 
VALUES (6, 'Ron Weasley', TO_DATE('2025-04-03', 'YYYY-MM-DD'), 130);
INSERT INTO orders (order_id, wizard_name, order_date, order_amount) 
VALUES (7, 'Draco Malfoy', TO_DATE('2025-04-01', 'YYYY-MM-DD'), 250);
INSERT INTO orders (order_id, wizard_name, order_date, order_amount) 
VALUES (8, 'Draco Malfoy', TO_DATE('2025-04-03', 'YYYY-MM-DD'), 220);
INSERT INTO orders (order_id, wizard_name, order_date, order_amount) 
VALUES (9, 'Ginny Weasley', TO_DATE('2025-04-01', 'YYYY-MM-DD'), 150);
INSERT INTO orders (order_id, wizard_name, order_date, order_amount) 
VALUES (10, 'Ginny Weasley', TO_DATE('2025-04-04', 'YYYY-MM-DD'), 130);
SELECT * FROM ORDERS;

SELECT WIZARD_NAME, ORDER_DATE, ORDER_AMOUNT
FROM ORDERS;
-- 1) 각 마법사별로 최초 주문 날짜와 최후 주문 날짜 처리(MIN(), MAX())
SELECT WIZARD_NAME, ORDER_DATE
FROM ORDERS
ORDER BY WIZARD_NAME, ORDER_DATE;
SELECT WIZARD_NAME, MIN(ORDER_DATE) "최초주문일", MAX(ORDER_DATE) "최후주문일"
FROM ORDERS
GROUP BY WIZARD_NAME
ORDER BY WIZARD_NAME;

-- 2) 각 마법사별로 주문건수, 주문량의 평균  처리..(COUNT(), AVG())
SELECT WIZARD_NAME, ORDER_AMOUNT
FROM ORDERS
ORDER BY WIZARD_NAME, ORDER_AMOUNT;
SELECT WIZARD_NAME, COUNT(ORDER_AMOUNT) "주문건수", AVG(ORDER_AMOUNT) "주문량 평균"
FROM ORDERS
GROUP BY WIZARD_NAME;

-- 그룹함수의 통계치의 조건.. 주의) 일반 데이터의 조건과 차이 있음..
-- 1) 일반 컬럼의 조건.: WHERE 조건 처리
SELECT WIZARD_NAME, COUNT(ORDER_AMOUNT) "주문건수", AVG(ORDER_AMOUNT) "주문량 평균"
FROM ORDERS
WHERE WIZARD_NAME LIKE '%Ron%' -- 일반 WHERE 조건절의 위치...
GROUP BY WIZARD_NAME;
-- 2) 그룹 함수가 적용된 조건처리  GROUP BY 밑에 HAVING으로 선언하여 처리
--    주문량의 평균이 190이상인 경우
SELECT WIZARD_NAME, COUNT(ORDER_AMOUNT) "주문건수", AVG(ORDER_AMOUNT) "주문량 평균"
FROM ORDERS
GROUP BY WIZARD_NAME
HAVING AVG(ORDER_AMOUNT)>=190;
-- SUM() 합산을 처리하는 함수..
-- EX) 직책(JOB)별 급여(SAL)의 합산을 출력하되 합산금액에 8000이상인 것을 직책과 합산금액을 출력하세요..
SELECT JOB, SAL
FROM EMP
ORDER BY JOB, SAL;
/*
SELECT 그룹할컬럼, 함수(대상컬럼)
FROM 테이블명
GROUP BY 그룹할컬럼

함수 : COUNT()갯수, MIN()최소, MAX()최대, SUM()합산
 * */
SELECT JOB, COUNT(SAL), MIN(SAL), MAX(SAL), SUM(SAL)
FROM EMP
GROUP BY JOB
HAVING SUM(SAL)>=8000;


CREATE TABLE students (
    student_id INT,
    student_name VARCHAR2(50),
    subject VARCHAR2(50),
    score INT
);
INSERT INTO students (student_id, student_name, subject, score) VALUES (1, 'Harry', 'Potions', 90);
INSERT INTO students (student_id, student_name, subject, score) VALUES (2, 'Hermione', 'Potions', 85);
INSERT INTO students (student_id, student_name, subject, score) VALUES (3, 'Ron', 'Potions', 80);
INSERT INTO students (student_id, student_name, subject, score) VALUES (1, 'Harry', 'Herbology', 75);
INSERT INTO students (student_id, student_name, subject, score) VALUES (2, 'Hermione', 'Herbology', 95);
INSERT INTO students (student_id, student_name, subject, score) VALUES (3, 'Ron', 'Herbology', 60);
SELECT * FROM STUDENTS;
-- EX1) 과목별(SUBJECT)별 평균 점수(SCORE)
-- EX2) 과목별(SUBJECT)별 최고 점수(SCORE)
-- EX3) 과목별(SUBJECT)별 최저 점수(SCORE)가 80미만인 경우
/*
SELECT JOB, COUNT(SAL), MIN(SAL), MAX(SAL), SUM(SAL)
FROM EMP
GROUP BY JOB
HAVING SUM(SAL)>=8000;
**/
SELECT SUBJECT, AVG(SCORE) "평균", MAX(SCORE) "최고점수", MIN(SCORE) "최저점수"
FROM STUDENTS
GROUP BY SUBJECT
HAVING  MIN(SCORE)<80;

SELECT SUBJECT, AVG(SCORE) "평균", MAX(SCORE) "최고점수"
FROM STUDENTS
GROUP BY SUBJECT;










