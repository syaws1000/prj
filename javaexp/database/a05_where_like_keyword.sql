SELECT * FROM emp;
/*
# 키워드 검색 like
1. 컬럼에서 like를 사용하면 비슷한 키워드로 해당 내용을 검색할 수 있다.
2. 기본 형식
	1) WHERE 컬럼명 LIKE '%키워드%'; -- 해당 컬럼에서 키워드를 포함되면 모두 검색
	2) WHERE 컬럼명 LIKE '키워드%' -- 해당 컬럼에서 키워드로 시작하면 검색
	3) WHERE 컬럼명 LIKE '%키워드' -- 해당 컬럼에서 키워드로 종료하면 검색
	4) WHERE 컬럼명 LIKE '___';   -- 해당 자리수가 맞으면 검색( _ (언더바 3개) )
	5) WHERE 컬럼명 LIKE '_A_';  -- 중간에 A가 포함되고 자기수가 3개이면 출력
	6) WHERE 컬럼명 LIKE '__A';  -- 자리수가 3개이고, 마지막에 A포함된 데이터 검색
	
 * */
SELECT ENAME, JOB, SAL FROM EMP;
-- 앞뒤 상관없이 A 문자가 포함한 ENAME이 있는 사원정보 ENAME, JOB, SAL 검색
SELECT ENAME, JOB, SAL FROM EMP WHERE ENAME LIKE '%A%';
-- EX) 앞뒤 상관없이 M문자가 포함한 JOB이 있는 사원정보, ENAME, JOB, SAL 검색
SELECT ENAME, JOB, SAL -- 선택할 컬럼(열단위 선택)
FROM EMP  -- 대상이 되는 테이블명
WHERE JOB LIKE '%M%'; -- WHERE 컬럼명 LIKE '%검색할키워드%' 행단위 FILTERING

SELECT * FROM EMP WHERE ENAME LIKE '%A%'; -- A시작, 중간A, 마지막A 다 포함

SELECT * FROM EMP 
WHERE ENAME LIKE 'A%'; -- A로 시작하는 데이터가 있는 사원명(ENAME)을 검색
SELECT * FROM EMP
WHERE ENAME LIKE 'W%';  -- W로 시작하는 데이터가 있는 사원명(ENAME)이 있는 사원정보 검색
SELECT * FROM EMP;
WHERE JOB LIKE 'SAL%'; -- SAL로 시작하는 데이터가 있는 직책명(JOB)이 있는 사원정보 검색

SELECT * FROM EMP 
WHERE ENAME LIKE '%S'; -- ENAME이 S로 끝나는 데이터가 있는 사원정보 검색
SELECT * FROM EMP 
WHERE JOB LIKE '%MAN'; -- JOB이 MAN로 끝나는 데이터가 있는 사원정보 검색
SELECT * FROM EMP;
--- EX) JOB이 ER로 끝나는 사원 정보(EMPNO, ENAME, JOB, SAL) 출력..
SELECT EMPNO, ENAME, JOB, SAL
FROM EMP
WHERE JOB LIKE '%ER';

SELECT * 
FROM EMP
WHERE ENAME LIKE '____';  -- LIKE '_의 갯수' 자리수

SELECT * 
FROM EMP
WHERE ENAME LIKE '_____';  -- LIKE '_의 갯수' 자리수
SELECT *
FROM EMP
WHERE ENAME LIKE '__A__'; -- 자리수가 5개이면 세번째짜리에 A가 포함되어 있을 때..
SELECT * 
FROM EMP;
-- EX) JOB이면서 자리수가 5자리인 사원정보를 출력하세요..
SELECT *
FROM EMP
WHERE JOB LIKE '_____';
-- EX) ENAME이면서 자리수가 4자리이고 두번째 I를 포함한 사원정보 출력..
SELECT *
FROM EMP
WHERE ENAME LIKE '_I__';
SELECT * FROM EMP WHERE JOB LIKE '__E__'; -- JOB이 총 5개의 자리에 중앙에 E가 있는 경우..

SELECT * FROM EMP WHERE JOB LIKE '__E%'; -- JOB이 3번째자리가 E인 데이터
SELECT * FROM EMP WHERE JOB LIKE '%R_'; -- JOB이 뒤에서 2번째 데이터 R인 데이터
SELECT * FROM EMP;
--  EX) 앞에서 3번째 L이 포함된 사원명(ENAME)이 있는 사원정보 출력
SELECT * FROM EMP
WHERE ENAME LIKE '__L%';
--  EX) 뒤에서 4번째 S가 포함된 직책(JOB)이 있는 사원정보 출력
SELECT * FROM EMP;
WHERE JOB LIKE '%S___';
SELECT * FROM EMP
WHERE JOB LIKE '%A_';
SELECT * FROM EMP
WHERE JOB LIKE '%G__';


-- ex1) 사원명이 B가 포함된 사원정보
-- ex2) 사원명이 앞에서 4, 5번째가 ES 포함된 사원정보
-- ex3) 사원명이 세번째 자에에 M이 포함된 사원정보
-- ex4) 사원명이 자리수가 5자리이고, 중간에 I가 포함된 사원명
