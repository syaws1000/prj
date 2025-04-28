
/* 
# 데이터의 정렬처리
1. SQL명령문에서 검색된 결과는 테이블 형식으로 데이터를 입력된 순서로 출력한다.
2. 데이터의 출력 순서를 특정한 컬럼을 기준으로 오름차순/내림차순으로 정렬하는 경우가 발생한다.
3. 여러 개의 컬럼에 대한 정렬 순서를 지정해서 처리해야 할 경우, 1차 컬럼명 정렬옵션 2차
	컬럼명 정렬옵션으로 오름차순 내림차순으로 정렬옵션을 적용하여 처리한다.
4. 기본적인 정렬 방법
	1) 문자값은 알파벳순으로 출력하고, 한글은 가나다라 순으로 출력된다(오름차순)
	2) 숫자값은 가장 작은 수부터 시작하여 점점 더 큰값으로 정렬된다(오름차순)
5. 기본 형식코드
	SELECT 선택할 컬럼
	FROM 테이블명
	WHERE 조건문 처리
	ORDER BY 컬럼1 [ASC/DESC], 컬럼2 [ASC/DESC]
	1) ASC : 모든 정렬은 오른차순이 DEFAULT이다. 즉, 옵션을 정하지 않으면 오름차순으로 처리된다.
	2) DESC : 역순, 내림차순을 의미한다. 내림차순을 처리할 때는 컬럼명 DESC라고 명시적으로 선언하여야 한다.	
*/
SELECT * FROM EMP;
SELECT SAL
FROM EMP
ORDER BY SAL ;
SELECT SAL, ENAME
FROM EMP
ORDER BY SAL ; -- 기본적으로 정렬이 오름차순으로 출력된다. ASC 생략가능.
SELECT *
FROM EMP 
ORDER BY SAL;
-- 조별로 하나의 컬럼, 두개의 컬럼, 전체 컬럼에서의 정렬이 어떤 의미인지 확인?
-- EX1) 사원번호 기준으로 오름차순으로 출력 전체 사원정보, 
SELECT *
FROM EMP
ORDER BY EMPNO;


SELECT SAL, ENAME
FROM EMP
ORDER BY SAL DESC; -- DESC라고 옵션을 변경하면 역순으로 출력된다.
-- EX2) 사원번호 기준으로 내림차순으로  사원번호, 사원명, 급여를 출력하세요
SELECT EMPNO, ENAME, SAL
FROM EMP e 
ORDER BY EMPNO DESC;

SELECT ENAME, EMPNO, JOB, SAL
FROM EMP
ORDER BY ENAME;
SELECT ENAME, EMPNO, JOB
FROM EMP
ORDER BY ENAME DESC;

SELECT DEPTNO, JOB, SAL, ENAME 
FROM EMP
ORDER BY DEPTNO, JOB;


SELECT DEPTNO, JOB, SAL, ENAME 
FROM EMP
ORDER BY DEPTNO DESC, JOB DESC;
/*
EX) 사원정보(직책명, 급여, 사원명)를 출력하되,
	정렬1차로 직책(JOB)을 역순위로, 급여(SAL)을 순차정렬로 처리해서 출력하세요
 * */
SELECT JOB, SAL, ENAME
FROM EMP
ORDER BY JOB DESC, SAL;
-- 정렬1는 직책 내림, 정렬2 급여 오름, 정렬3 사원명 오름
SELECT JOB, SAL, ENAME
FROM EMP
ORDER BY JOB DESC, SAL, ENAME;





