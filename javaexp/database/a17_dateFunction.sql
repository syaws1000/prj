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
