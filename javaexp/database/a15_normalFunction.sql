/*
# CASE WHEN 구문
1. CASE WHEN 구문은 조건에 따라 다른 값을 반환하는 구문입니다. SQL 쿼리 내에서
다양한 조건을 평가하여 해당 조건에 맞는 값을 출력하거나 계산할 수 있습니다. CASE WHEN은
주로 SELECT, UPDATE, DELETE 구문에서 조건을 설정할 때, 사용됩니다.
2. 유형에 따른 구분
	1) 단순 CASE구문(Simple CASE Expression)
		단순 CASE 구분은 특정 컬럼의 값을 다른 값과 비교하여 결과를 반환합니다. 
		이 방식은 주어진 값과 일치하는 조건을 찾아서 대응되는 값을 반환하는 방식입니다.
		- 기본 형식
		SELECT CASE 컬럼명
				WHEN 값1 THEN 처리결과1
				WHEN 값2 THEN 처리결과2
				..
				ELSE 처리결과마지막
		 FROM 테이블명
		컬럼명 : 비교할 컬럼
		값1, 값2 .. : 비교할 값들
		결과1, 결과2 .. : 조건에 해당하는 값을 반환
		처리결과마지막 : 위 나열된 WHEN값이 아닐 때, 처리할 값
	2) 검색 CASE 구문(Searched CASE Expression)
		검색 CASE 구문은 복잡한 조건을 평가하여 여러 조건 중에서 참인 조건을 찾아 결과를 반환합니다.
		이 방식은 조건식을 사용할 수 있어 더 유여하고 복잡한 로직을 처리할 수 있습니다.
		- 기본형식
		SELECT CASE
			   WHEN 조건1 THEN 결과1	
			   WHEN 조건2 THEN 결과2	
			   ..
			   ELSE 기본결과
			   END
	     FROM 테이블명
	   조건1, 조건2 : 평가할 조건식
	   결과1, 결과2 : 조건이 참일 때 반환될 값
	   기본 결과 : WHEN 구문의 조건에 해당하지 않을 때, 반환되는 기본값  
	3) CASE WHEN에서 NULL처리
		CASE WHEN 구문에서 NULL을 처리할 때도 매우 유용합니다. 예를들어, 특정 컬럼 값이 NULL인 경우 
		다른 값을 출력하거나 조건을 적용할 수 있습니다.
	   - 기본 형식
	   SELECT CASE
	              WHEN 컬럼 IS NULL THEN '처리할문자열1'
	              WHEN 조건 THEN '처리할문자열2'
	              ELSE '처리할문자열3'	
	          END 
	     FROM 테이블명
	   컬럼 IS NULL : 데이터가 없을 때, '처리할문자열1'로 수행 처리
	   그외 조건일 때 처리할 문자열2로 수행
	   위 나열된 조건 이외일 대, 처리할 문자열3으로 수행        
		
 * */
SELECT COMM FROM EMP;
SELECT ENAME, COMM,
	   		 CASE
	   			WHEN COMM IS NULL THEN '보너스 없음'
	   			WHEN COMM > 500 THEN '고급보너스'
	   			ELSE '하급보너스'
	   		 END "보너스구분"
FROM EMP;	   
/*
ex) MGR 기준으로 NULL일 때는 최고관리자, 7839일 때는 중간관리자  그외는 일반 사원으로  처리해서 
사원번호, 사원명, 관리자번호(MGR), 관리자분류  로 출력하세요..
**/
SELECT ENAME, MGR,
		CASE WHEN MGR IS NULL THEN '최고관리자'
		     WHEN MGR = 7839 THEN '중간관리자'
		     ELSE '일반사원'
		END "관리자구분"     
FROM EMP;		
SELECT MGR FROM EMP;



SELECT ENAME, SAL,
       CASE 
       	 WHEN SAL>=5000 THEN '고임금자'
       	 WHEN SAL>=3000 THEN '중간임금자'
       	 ELSE '저임금자'
       END "급여구분"
  FROM EMP;
SELECT EMPNO, ENAME
FROM EMP 
ORDER BY EMPNO;
-- 회사에 체육대회를 개최하는데 사원번호(EMPNO)를 기준으로 나누기로 함.
-- 홍팀 : 7654이하,  청팀: 7654초과 7839이하,  그외 백팀 
-- 사원번호, 팀구분, 사원명을  출력하세요..

SELECT EMPNO, 
	   CASE 
	   	   WHEN EMPNO<=7654 THEN '홍팀'	
	   	   WHEN EMPNO<=7839 THEN '청팀'
	   	   ELSE '백팀'
	   END 팀구분,
	   ENAME
FROM EMP;	   	    


SELECT ENAME, DEPTNO,
		CASE DEPTNO
         WHEN 10 THEN '인사부'
         WHEN 20 THEN '회계부'
         WHEN 30 THEN '아이티부'
         ELSE '기타부서'
       END "부서이름"
 FROM EMP;      
-- EX) MGR 번호 기준으로  7839이면 고위직  7566 중간관리직 그외는 일반직원으로 CASE WHEN 구문으로 사원구분을 출력하세요.
SELECT ENAME, MGR,
	   CASE MGR
	     WHEN 7839 THEN '고위직'
	     WHEN 7566 THEN '중간 관리직'
	     ELSE '일반직원'
	   END "사원구분"
FROM EMP;











