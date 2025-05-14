/*
# 서브쿼리
1. 서브쿼리(Subquery)란 SQL 문 내에서 다른 SQL 문을 내부쿼리로 포함하여, 그 결과를
외부 쿼리의 조건이나 데이터로 사용하는 방식입니다. 서브쿼리는 가상의 테이블처리 작동하며,
복잡한 데이터를 처리할 때 매우 유용합니다.
2. 서브쿼리는 조건문의 값으로 사용하거나, 테이블을 가상으로 만들어서 다른 테이블과 조인하는데
사용될 수 있습니다. 서브쿼리의 결과는 외부 쿼리에서 처리된 데이터를 기반으로 다른 작업을 
수행하는 데 도움을 줍니다.
3. 서브쿼리 기본 형식
	1) 서브 쿼리의 기본 형식
		서브쿼리는 WHERE, FROM, SELECT 절에ㅐ서 사용될 수 있습니다. 각기 다른 상황에
		맞는 서브뤄키 사용방법을 아래에서 다뤄보겠습니다.
		- 조건문의 데이터로 사용되는 서브쿼리
		서브쿼리를 조건문에서 사용하면, 먼저 내부 쿼리로 데이터를 조회한 후, 그 결과를 외부
		쿼리에서 사용하여 조건을 적용합니다.
		EX) 최고 급여자 조회
		먼저 최고 급여를 찾고, 그 값을 기준으로 사원 정보를 출력하는 예시
*/
SELECT ENAME, SAL 
FROM EMP 
WHERE SAL = (
	SELECT MAX(SAL)
	FROM EMP
);
SELECT * FROM EMP;
/*
	1. 내부 쿼리(SELECT MAX(SAL) FROM EMP)는 EMP 테이블에서 최고 급여를 찾습니다.
	2. 외부 쿼리에서 그 급여와 일치하는 사원의 이름과 급여를 출력합니다.
 * */
SELECT * FROM EMP;
-- 최초 입사한 사원 정보를 가져와라..
-- 1. SUBQUERY 최초 입사일..
SELECT MIN(HIREDATE)
FROM EMP;
-- 2. MAINQUERY에 할당 처리.
SELECT *
FROM EMP
WHERE HIREDATE = (
	SELECT MIN(HIREDATE)
	FROM EMP
);
-- EX1) 최저 급여자 사원정보를 출력하세요.. MIN
SELECT *
FROM EMP 
WHERE SAL = (
	SELECT MIN(SAL)
	FROM EMP
);
-- EX2) 가장 마지막에 입사한 사원정보를 출력하세요  
SELECT *
FROM EMP 
WHERE HIREDATE = (
	SELECT MAX(HIREDATE)
	FROM EMP
);
-- 부서별로 최고 급여자 정보를 가져올려고 할 때..
SELECT DEPTNO, MAX(SAL)
FROM EMP
GROUP BY DEPTNO;
SELECT *
FROM EMP
WHERE (DEPTNO , SAL) IN(
	SELECT DEPTNO, MAX(SAL)
	FROM EMP
	GROUP BY DEPTNO
);
-- (열1, 열2) IN ( SUBQUERY ) : SUBQUERY로 처리된 결과가 여러개일 때, IN으로 사용
-- (열1, 열2) = ( SUBQUERY ) : SUBQUERY로 처리된 결과가 단일 한개일 때, = 으로 사용
