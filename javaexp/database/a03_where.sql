SELECT * FROM emp;
/* 
# where 조건문 처리
1. 행단위 데이터로 필터링하여 검색할 때 주로 사용된다.
	ps) select ename, job ==> 열단위 컬럼 선택
	ex) where sal >= 3000  ==> 행단위로 필터링
2. where 조건절에는 컬럼명을 기준으로 여러가지 비교연산식과
	논리연산식을 사용한다.
3. 기본 형식
	select 컬럼1, 컬럼2,...
	from 테이블
	where 비교연산식 또는 논리연산식
	1) 비교연산식
		컬럼명 = 데이터  해당 데이터일 때.
		ex) where ename = 'SMITH';
			ename이 SMITH일 때,
			주의) 프로그램에서는 == 를 사용하지만, DB에서는 = 사용
		그외 비교연산자(DB)
		>, <, >=, <=, !=, <>(같지 않을때)
	2) 논리연산식
		조건1 and 조건2  ps) 프로그램에서 사용하는 &&를 사용하지 않는다.
		조건1 or 조건2 ps) 프로그램에서 사용하는 ||를 사용하지 않는다.
		not 조건1  ps) 프로그램에서 !(조건)과 구분
	3) 키워드 논리 연산식
		오라클에서는 위 비교, 논리연산식의 내용을 특정한 경우 키워드로 효율적으로 처리한다.
		컬럼 in(데이터1, 데이터2, 데이터3...) ==> 컬럼 = 데이터1 or 컬럼 = 데이터2 or ..
		컬럼 between 시작데이터 and 마지막데이터 ==> 컬럼 >= 시작데이터 and 컬럼 <= 마지막데이터
			 
*/
SELECT *
FROM emp;
SELECT ename, sal -- 열단위 선택
FROM emp
WHERE sal >=2000; -- 행단위 filtering
-- 연봉(sal)이 2000이상인 사원 정보(사원명, 연봉) 출력
SELECT ename, sal
FROM emp
WHERE sal>=2000;
-- 사원명(ename)이 ALLEN인 데이터의 전체 컬럼 출력
SELECT *  -- 열단위 모두다 
FROM emp
WHERE ename = 'ALLEN';
-- ex1) sal 4000미만인 사원정보의 모든 컬럼(*)을 출력하세요
SELECT *
FROM emp
WHERE sal < 4000;
-- ex2) JOB이 'SALESMAN'인 사원번호(empno), 사원명(ename), 직책명(job)을 출력
SELECT EMPNO, ENAME, JOB
FROM EMP
WHERE JOB = 'SALESMAN';
-- 논리 연산식 AND  :  WHERE 조건1 AND 조건2   ==> 2개의 조건이 모두다 맞는 데이터를 행단위로 가져온다
-- 직책(JOB)이 SALESMAN 이고 급여(SAL)가 1500이상인 사원의 사원이름(ENAME), 직책명(JOB), 급여(SAL)
SELECT ENAME, JOB, SAL 
FROM EMP
WHERE JOB='SALESMAN' AND SAL>=1500; -- 논리연산식 두개의 비교연산식이 모두 다 TRUE
--EX1) 부서번호(DEPTNO)가 10이고 급여(SAL)가 3000미만인 사원정보전체(*) 출력
SELECT *
FROM EMP 
WHERE DEPTNO = 10
AND SAL < 3000;
--EX2) 급여(SAL)가 2000이상이고, 직책(JOB)이 'MANAGER' 인 
--     사원명(ENAME), 급여(SAL), 직책(JOB) 컬럼 출력
SELECT ENAME, SAL, JOB
FROM EMP
WHERE SAL >= 2000
AND JOB = 'MANAGER';
-- 논리연산자 OR 처리 :  조건1 OR 조건2 ==> 두개의 조건중에 하나만 해당하더라도 데이터를 로딩하는 처리
-- 즉, 같은 행에 데이터가 있을 때, 두개의 조건중 하나이상만 해당 하더라도 데이터를 가져오는 처리
-- 직책(JOB)이 'CLERK'이거나 부서번호(DEPTNO)가 10인 사원의 사원명, 직책명, 부서번호를 출력
SELECT ENAME, JOB, DEPTNO
FROM EMP
WHERE JOB = 'CLERK' OR DEPTNO = 10;
-- EX1) 급여가 5000이상이거나 관리자번호(MGR)가 7782인 사원정보(*)를 출력
SELECT *
FROM EMP 
WHERE SAL>=5000 
OR MGR = 7782;
-- EX2) 부서번호가 30이거나 급여가 2000미만인  사원명(ENAME), 부서번호(DEPTNO), 급여(SAL) 출력
SELECT ENAME, DEPTNO, SAL 
FROM EMP
WHERE DEPTNO = 30
OR SAL < 2000;
-- 비교연산식 NOT(조건문|논리연산식) 해당 조건에 맞지 않는 데이터 로딩 처리..
-- 직책이 PRESIDENT가 아닌 사원의 정보를 출력하세요
SELECT *
FROM EMP
WHERE NOT( JOB = 'PRESIDENT');
-- 사원번호가 7800 또는 부서번호가 10 ===> 아닌 데이터
SELECT *
FROM EMP
WHERE NOT(EMPNO = 7800 OR DEPTNO = 10);
SELECT *
FROM EMP
WHERE JOB != 'PRESIDENT';
SELECT *
FROM EMP
WHERE JOB <> 'PRESIDENT';

--EX1) NOT 활용해서 부서번호가(20)이 아닌 사원정보(*)를 출력
SELECT *
FROM EMP
WHERE NOT(DEPTNO = 20 );
-- EX2) NOT 부서번호(DEPTNO)가 (20이거나 30인 경우가) 아닐 때, 
--   사원의 사원번호(EMPNO), 사원명(ENAME), 부서번호(DEPTNO)를 출력하세요.
SELECT EMPNO, ENAME, DEPTNO
FROM EMP
WHERE NOT(DEPTNO = 20 OR DEPTNO=30);
--     DEPTNO != 20 AND DEPTNO != 30










