SELECT * FROM emp;
/*
# 키워드를 통한 조건 검색
1. 컬럼 IN(데이터1, 데이터2)
	SELECT *
	FROM 테이블명
	WHERE 컬럼명 IN(데이터1, 데이터2);
	특정 컬럼에서 OR조건으로 데이터를 검색할 때, 위 형식을
	이용하면 컬럼명 = 데이터1 OR 컬럼명 = 데이터2...로 나열되는 것보다
	간단하게 데이터를 처리할 수 있다.
2. 컬럼명 BETWEEN 시작범위 AND 마지막범위
	특정 컬럼에서 시작과 마지막범위를 포함하여 검색할 때 사용한다.
	위 내용의 경우 컬럼명 >= 시작범위 AND 컬럼명 <= 마지막 범위와
	동일한 결과이지만 가독성이 좋다.
3. NULL값에 대한 처리
	NULL이란 해당 컬럼에 데이터가 없다는 뜻이다. 주의) ' '
	특정한 데이터가 NULL인지 여부를 검색할 때, 만약 컬럼명 = NULL로 사용하면
	오라클에서 기본적으로 지원하는 형변환에 의해서 컬럼명 = 'NULL'로 처리되어 원하는 결과를 얻을 수 없다.
	이 때, 사용하는 키워드가 컬럼명 IS NULL, 컬럼명 IS NOT NULL 이다.
	이것을 해당 컬럼이 NULL인 경우와 NULL이 아닌 경우를 검색해 준다.
	SELECT *
	FROM 테이블명
	WHERE 컬럼명 IS NULL;  -- 해당 컬럼이 NULL인 경우 검색
	SELECT *
	FROM 테이블명
	WHERE 컬럼명 IS NOT NULL; -- 해당 컬럼이 NULL이 아닌 경우 검색
**/
-- 사원번호가 7499 이거나, 7566 이거나, 7698인 데이터 검색 방식 2가지
-- OR를 사용
SELECT *
FROM EMP
WHERE EMPNO = 7499 OR EMPNO = 7566 OR EMPNO=7698;
SELECT EMPNO, ENAME, JOB
FROM EMP
WHERE EMPNO IN(7499, 7566, 7698);
-- EX) ENAME이 SMITH 이거나 JONES이거나 JAMES인 경우 사원정보(*) 출력..
SELECT *
FROM EMP  
WHERE ENAME IN ('SMITH', 'JONES','JAMES');
-- # BETWEEN 시작 AND 마지막
-- 급여가 1000 에서 시작해서 2000까지인 데이터를 가져오기...
SELECT ENAME, SAL
FROM EMP
WHERE SAL >= 1000 AND SAL <= 2000;
SELECT ENAME, SAL, JOB
FROM EMP
WHERE SAL BETWEEN 1000 AND 2000;
-- EX) 사원번호가 7500이상 7800 이하 데이터의 사원번호(EMPNO), 사원명(ENAME), 급여(SAL)를 출력하세요..
SELECT EMPNO, ENAME, SAL
FROM EMP 
WHERE EMPNO BETWEEN 7500 AND 7800;
SELECT * FROM EMP;
SELECT * 
FROM EMP
WHERE COMM = NULL; -- COMM = 'NULL'
SELECT *
FROM EMP
WHERE COMM IS NULL;
-- # NULL인 경우에 IS NULL
SELECT ENAME, COMM
FROM EMP
WHERE COMM IS NULL; -- COMM 컬럼이 데이터가 없는 (NULL) 경우에 검색할 때
SELECT ENAME, COMM
FROM EMP
WHERE COMM = NULL; 
--- WHERE COMM = 'NULL' 형변환에 의해서 처리되기에 정상 결과값을 가져올 수 없다.
SELECT ENAME, COMM
FROM EMP
WHERE COMM IS NOT NULL; -- NULL이 아닌 경우를 검색
-- EX) EMPNO, MGR을 출력하되, MGR이 NULL인 경우와 NULL이 아닌 경우를 구분하여 출력하세요..
SELECT EMPNO, MGR
FROM EMP 
WHERE MGR IS NULL;
SELECT EMPNO, MGR
FROM EMP
WHERE MGR IS NOT NULL;
SELECT * 
FROM EMP;



