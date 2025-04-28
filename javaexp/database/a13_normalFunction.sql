
/*
# ORACLE 일반 기능 함수 
1. 데이터베이스의 데이터를 처리하는데 유용한 내장 함수들을 포함합니다. 이러한 함수들은 문자열,
날짜, 숫자 등 다양한 데이터 유형에 대해 작업할 수 있으며, 데이터의 변환, 연산, 조작을 쉽게
할 수 있게 도와줍니다. 이 함수들을 주로 데이터 질의를 최적화하거나 원하는 형태로 변환할 때
유용하게 사용됩니다.
2. 문자열 함수
	문자열 함수는 텍스트 데이터를 처리할 때 매우 유용합니다. 문자열의 일부를 추출하거나
	길이를 구하는 등의 작업을 할 수 있습니다.
	1) 함수 종류
		UPPER():문자열을 대문자로 변환
		LOWER() : 문자열을 소문자로 변환
		SUBSTR() : 문자열의 일부를 추출
		CONCAT() : 두 문자열을 결합
		LENGTH() : 문자열의 길이를 반환
**/
-- UPPER()/LOWER() 함수 사용
SELECT STUDENT_NAME, UPPER(STUDENT_NAME) "대문자", SUBJECT, LOWER(SUBJECT) "소문자"
FROM STUDENTS;
/*
# SUBSTR()
1. 문자열을 추출해주는 기능하는 함수
2. 기본 형식
	SUBSTR(데이터, 시작번호, 잘라낼 길이)
	1) 시작번호 위치는 1부터 시작합니다.
	2) 잘라낼 길이는 생략하면 끝까지 잘라진다.
 * */
SELECT ENAME, SUBSTR(ENAME, 1, 3) "사원명(앞에서3글자)"
FROM EMP;
-- EX1) 사원이름(ENAME)의 앞에 2글자 추출하여 출력
SELECT ENAME, SUBSTR(ENAME, 1, 2) "앞에서2글자",
		JOB, SUBSTR(JOB,3) "3글짜부터마지막"
FROM EMP;
-- EX2) 직책(JOB)의 앞에 3번째 글자부터 끝까지 출력
-- 마지막은 -1, -2 마지막에 첫번째, 두번째부터..
SELECT JOB, SUBSTR(JOB, -4,2) "뒤로부터4번째에서2개"
FROM EMP;
/*
# CONCAT() 함수
1. 두개의 문자열을 결합한다.
   오라클에서는 CONCAT(a,b) 또는 a||b로 문자열을 붙일 수 있다.
   단, CONCAT()는 두개의 인자만 허용한다.
2. 기본형식
	CONCAT(문자열1, 문자열2)
	또는 
	문자열1||문자열2
*/
SELECT ENAME, JOB, CONCAT(ENAME, '-'||JOB) "이름_직책"
FROM EMP;
-- EX)  사원 이름(ENAME)에 '님'을 붙여서 출력,  
--      부서번호(DEPTNO)와 사원번호(EMPNO)를 연결해서 고유 ID 만들기 10-7963 출력
SELECT ENAME, '님', DEPTNO, '-', EMPNO,
	   CONCAT(ENAME,'님') "이름님", CONCAT(DEPTNO,'-'||EMPNO) "고유ID"
FROM EMP;
/*
# LENGTH() 함수
1. 문자열의 문자수(길이)를 반환합니다.
   띄어쓰기 포함/한글도 1글자씩 계산됩니다.
2. 기본형식
	LENGTH(문자열 또는 컬럼명)
# LENGTHB() 함수
1. 문자를 BYTE단위로 반환합니다.
   한글의 경우 3BYTE로 처리해서 계산됩니다.
2. 기본형식
	LENGTHB(문자열 또는 컬럼명)
**/
SELECT ENAME, LENGTH(ENAME) "사원명글자수", LENGTHB(ENAME) "사원명BYTE"
FROM EMP01;
-- EX1) 직책(JOB)의 글자수를 출력
SELECT JOB, LENGTH(JOB) "직책글자수"
FROM EMP;
-- EX2) 사원이름(ENAME) 길이가 5보다 큰 사람만 출력
SELECT ENAME, LENGTH(ENAME) "사원명글자수"
FROM EMP
WHERE LENGTH(ENAME)>5;
/*
EX1) 사원명(ENAME)의 바이트 수가 6보다 큰 사원만 출력
EX2) ENAME 5글자 이상이고, 바이트 수가 6이상인 사원 목록을 구하세요..
 * */
SELECT ENAME, LENGTHB(ENAME) "사원명BYTE"
FROM EMP01
WHERE LENGTHB(ENAME) > 6;

SELECT ENAME, LENGTH(ENAME), LENGTHB(ENAME)
FROM EMP01
WHERE LENGTH(ENAME)>=5
AND LENGTHB(ENAME)>=6;












