/*
# 오라클데이터베이스에서 형변환 함수
1. 오라클데이터베이스에서 형변환 함수는 날짜, 숫자, 문자 간에 데이터를 변환할 때 사용됩니다.
이러한 함수들은 데이터 타입을 변환하여, 다른 형식의 데이터를 처리하거나 비교할 수 있게 해줍니다.
자주 사용하는 형변환 함수에는 TO_NUMBER(), TO_CHAR(), TO_DATE() 등이 있습니다.
# 형변환 함수 유형
1. 숫자형 변환 함수 : TO_NUMBER()
	문자열, 날짜 또는 다른 숫자 형식을 숫자 형식으로 변환하는데 사용됩니다.
	1) 속성
		기본 구문 : TO_NUMBER(표현식, FORMAT형식, NLS_PARAM)
		- 표현식 : 숫자로 변환할 표현식입니다. 예를들어 문자열, 날짜 등
		- FORMAT형식 : 숫자의 형식을 지정하는 선택적인 매개변수
		- NLS_PARAM : 숫자의 지역화 매개변수
**/
SELECT TO_NUMBER('1234')+25 "문자열에서숫자로" FROM DUAL;
-- 문자열을 숫자로 변환하여 검색 처리
SELECT *
FROM EMP
WHERE SAL>=TO_NUMBER('2000'); -- 문자열로 '2000'을 숫자 2000으로 입력해서  급여계산 처리.
-- 특정 문자열에서 숫자만 추출해 변환 처리
SELECT ENAME, SAL,
	   SAL+TO_NUMBER('1,200', '9,999') "숫자형 형식"
  FROM EMP;
-- 특정 문자열 형식을 입력받은 내용을 검색할 때, 처리
SELECT ENAME, SAL
FROM EMP 
WHERE SAL >= TO_NUMBER('2,500','9,999'); -- 문자열로 2,500으로 입력받은 데이터를 숫자 2500바꾸어서 검색처리
-- EX) TO_NUMBER 함수를 이용해서 3,500을 형식 9,999로 설정해서 급여가 3500 미만 사원을 출력하세요.
SELECT *
FROM EMP 
WHERE SAL < TO_NUMBER('3,500','9,999');
/*
# TO_CHAR()
1. 문자열로 변환하여 처리해주는 유형을 말한다.
2. 유형
	1) 날짜데이터 ==> 문자열
		TO_CHAR(날짜유형데이터, 형식)
		해당 형식으로 사용되는 속성값
		EX) TO_CHAR(날짜데이터, 'YYYY/MM/DD Q AM/PM HH24:MI:SS')
		YYYY : 연도를 추출해준다. YYY, YY 형식
		Q : 분기 1/4분기 ~ 4/4분기 1~4를 문자열로 추출
		MONTH : 월,  MON, MM 등 형식
		WW : 연단위 주 1년에 52주 기준
		W :월단위 주 월 4주~5주 기준
		DD :일
		DAY : 요일
		AM/PM : 오전/오후 호출 표시
		HH : 12시간, HH24 : 24시간으로 표시
		MI : 분표시
		SS : 초표시		
**/
SELECT SYSDATE, 
		TO_CHAR(SYSDATE) "날짜문자열",
		TO_CHAR(SYSDATE,'YYYY') "연도",
		TO_CHAR(SYSDATE,'Q') "분기",
		TO_CHAR(SYSDATE,'MM') "월",
		TO_CHAR(SYSDATE,'DD') "일",
		TO_CHAR(SYSDATE,'DAY') "요일",
		TO_CHAR(SYSDATE,'WW') "연단위주",
		TO_CHAR(SYSDATE,'W') "월단위주",
		TO_CHAR(SYSDATE,'YYYY/MM/DD Q"/4분기"') "연/월/일 분기표시"
FROM DUAL;
SELECT ENAME, HIREDATE, TO_CHAR(HIREDATE) "입사일", TO_CHAR(SYSDATE,'YYYY/MM/DD Q"/4분기"') "연/월/일 분기표시"
FROM EMP
WHERE HIREDATE LIKE '81%'; -- HIREDATE 키워드 검색시는 TO_CHAR() 적용되어 자동형변환으로 검색된다.







