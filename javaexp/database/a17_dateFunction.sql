/*
# 날짜 함수
1. 날짜 데이터 타입에 사용하는 함수
2. 날짜 계산은 더하기, 빼기 연산이 가능하다.
	1) 날짜 데이터 + 숫자 : 해당 일자에 일수를 가산하여 처리한다.
	2) 날짜 데이터 + 1/24 : 시간 단위 + 1시간 처리가 된다.
	PS) 결국 +1은 1일단위이기에 이것을
		/24 : 시간단위 
		/60 : 분단위
		/60 : 초단위로 처리된다.		
3. 현재시간 처리 : SYSDATE(현재 연도/월/일/시/분/초)를 처리하는 
	내장된 객체		   
*/
SELECT SYSDATE "현재날짜/시간", SYSDATE-1 "전날/시간",
	   SYSDATE +1 "내일날짜시간", SYSDATE + 1/24 "1시간이후"
FROM DUAL;	   
SELECT ENAME, HIREDATE "입사일", HIREDATE-1 "입사전날",
	   HIREDATE + 1 "입사후 1일", HIREDATE + 0.5 "입사후 12시간후",
	   SYSDATE - HIREDATE "입사후현재",
	   CEIL(SYSDATE-HIREDATE) "입사후현재날짜"
FROM EMP;	  
-- EX) 사원명, 입사일을 출력하되, 입사후, 90일짜 날짜, 입사전 30일전 날짜를 출력하세요..
SELECT ENAME, HIREDATE, HIREDATE + 90 "입사후 90일",
		HIREDATE - 30 "입사전 30일"
FROM EMP;
/*
# 월단위 처리 함수.
1. MONTHS_BETWEEN(날짜데이터1, 날짜데이터2) : 날짜1과 날짜2사이의
	개월 수을 계산하여 숫자로 리턴한다. 1개월 단위로 1리턴되므로,
	만약 15일이면 0.5가 리턴된다.
 * */
SELECT SYSDATE,  MONTHS_BETWEEN(SYSDATE+30, SYSDATE) "현재와 30일후 월"
FROM DUAL;
SELECT ENAME, MONTHS_BETWEEN(HIREDATE+45, HIREDATE) "입사후 45일 후"
FROM EMP;
-- EX) 사원명, 입사일, 현재날짜로 15일후, 현재날짜 30일전의 개월 수를 출력하세요...
SELECT ENAME, HIREDATE, 
	MONTHS_BETWEEN(SYSDATE+15, SYSDATE) "현재날짜로 15일 후",
	MONTHS_BETWEEN(SYSDATE, SYSDATE-30) "현재날짜로 30일 전"
FROM EMP;
/*
# ADD_MONTHS(기준날짜데이터, 추가개월수) : 특정 추가개월 수 후에 날짜를 가져다 준다.
 * */
SELECT ENAME, HIREDATE, ADD_MONTHS(HIREDATE, 3) "입사후, 3개월",
	   ADD_MONTHS(HIREDATE, -2) "입사2개월전"
 FROM EMP;	   
/*
# NEXT_DAY(기준일,'요일')
1. 해당 날짜를 기준으로 명시된 요일의 첫 날짜를 반환하는 함수
 * */
-- 오늘로부터 다가오는 첫 일요일
SELECT 
	NEXT_DAY(SYSDATE,'일') "다가올 첫 일요일",
	NEXT_DAY(SYSDATE,'수') "다가올 첫 수요일"
FROM DUAL;
-- EX) 사원명과 입사일, 입사후첫토요일 출력하세요
SELECT ENAME, HIREDATE, NEXT_DAY(HIREDATE,'토') "입사후첫토요일"
FROM EMP;
/*
# LAST_DAY(날짜데이터) : 해당날짜가 속한 달의 마지막 날짜
 * */
SELECT SYSDATE, LAST_DAY(SYSDATE) "이번달 마지막일",
		LAST_DAY(SYSDATE)+1 "다음달 첫날"
FROM DUAL;
-- EX) 입사한 날짜에 속한 마지막날짜와 그 다음 첫날을 출력하되, 
--     급여일이 그 다음달 10일째되는 날이라고 할 때, 사원의 첫월급날짜를 출력하세요
SELECT ENAME, HIREDATE, LAST_DAY(HIREDATE) "그달마지막날",
		LAST_DAY(HIREDATE)+1 "입사다음달첫일", 
		LAST_DAY(HIREDATE)+10 "첫급여일"
FROM EMP;		


