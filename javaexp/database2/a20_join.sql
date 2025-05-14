SELECT * FROM DEPT;
SELECT * FROM EMP;
/*
# 조인
1. 조인은 sql에서 여러 테이블에 저장된 데이터를 관계에 따라 하나의 결과로 결합하여
조회할 때, 사용하는 기능이다. 이는 관계형 데이터베이스에서 매우 중요한 개념으로 여러
테이블을 효율적으로 관리하고 데이터를 조회할 때 사용됩니다.
2. 조인 기본 개념
	조인은 여러 테이블에서 관련된 데이터를 결합하여 하나의 결과를 만들어 내는 SQL의
	중요한 기능입니다. 이를 통해서 데이터를 여러 테이블에서 추출하고 결합할 수 있습니다.
3. 기본적인 조인 구문 형식
	SELECT E.*, D.DNAME, D.LOC
	FROM EMP E, DEPT D
	WHERE E.DEPTNO = D.DEPTNO
	1) EMP E와 DEPT D는 EMP와 DEPT테이블의 별칭입니다.
	2) E.DEPTNO = D.DEPTNO는 두 테이블을 DEPTNO컬럼을 기준으로 결합하는 조건입니다.
3. 결합된 데이터로 새로운 테이블 생성
	1) 두 테이블을 조인하여 결합된 데이터를 새로운 테이블로 생성할 수 있습니다.
	CREATE TABLE EMP_DEPT
	AS SELECT E.*, D.DEPTNO, D.LOC
	FROM EMP E, DEPT D
	WHERE E.DEPTNO = D.DEPTNO
	이 SQL문은 EMP와 DEPT테이블을 조인하여 EMP_DEPT라는 새로운 테이블을 생성합니다.
4. 업데이터 및 삭제 처리
	테이블을 분리하여 관리하면 다음과 같은 장점이 있습니다.
	1) 예를 들어, 부서명을 변경할 때, EMP_DEPT 테이블에서는 모든 부서 관련 컬럼을 수정해야 하지만, DEPT
	테이블만 수정하면 일관성 문제가 해결됩니다.
	2) 부서 정보를 삭제할 때, 관련된 사원 정보까지 삭제될 수 있으므로, EMP와 DEPT테이블을 분리하면 사원
	정보는 그대로 유지됩니다.
# 예시1 사원과 부서 정보 조회	
*/
SELECT E.ENAME "사원명", D.DNAME "부서명", E.SAL "급여", D.LOC "부서위치"
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO;
SELECT * FROM EMP;

CREATE TABLE EMP_DEPT
AS SELECT E.*, D.DNAME, D.LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO;

SELECT * FROM EMP_DEPT;

SELECT * FROM EMP01;
SELECT * FROM DEPT01;
UPDATE DEPT01
	SET DNAME = '영업부'
WHERE DEPTNO = 30;
CREATE TABLE EMP01_DEPT01
AS SELECT E.*, D.DNAME, D.LOC
	FROM EMP01 E, DEPT01 D
	WHERE E.DEPTNO = D.DEPTNO;
SELECT * FROM EMP01_DEPT01;
--7369, 1002, 7566
SELECT * FROM EMP01;
SELECT * FROM DEPT01;
DELETE 
FROM EMP01 
WHERE EMPNO IN(7369,1002, 7566);


CREATE TABLE MOVIE (
    MOVIE_ID INT,
    TITLE VARCHAR(50),
    GENRE VARCHAR(20)
);

INSERT INTO MOVIE VALUES (101, '인셉션', 'SF');
INSERT INTO MOVIE VALUES (102, '어벤져스', '액션');
INSERT INTO MOVIE VALUES (103, '라라랜드', '뮤지컬');
INSERT INTO MOVIE VALUES (104, '명량', '역사');
INSERT INTO MOVIE VALUES (105, '해리포터', '판타지');


CREATE TABLE CUSTOMER (
    CUSTOMER_ID INT,
    NAME VARCHAR(20),
    MOVIE_ID INT
);

INSERT INTO CUSTOMER VALUES (1, '철수', 101);
INSERT INTO CUSTOMER VALUES (2, '영희', 102);
INSERT INTO CUSTOMER VALUES (3, '민수', 103);
INSERT INTO CUSTOMER VALUES (4, '수지', 105);
INSERT INTO CUSTOMER VALUES (5, '바나나킥', NULL);

SELECT * FROM MOVIE; -- 101~105 MOVIE_ID
SELECT * FROM CUSTOMER; -- 101, 102, 103, 105, NULL
-- INNER JOIN 공통되는 컬럼 MOVIE_ID를 기준으로 동일한 데이터가 있는(공통 컬럼/공통데이터) 것을 기준으로 조인하여
-- 양쪽의 데이터를 나타낸다.
SELECT M.*, CUSTOMER_ID, NAME
FROM MOVIE M, CUSTOMER C
WHERE M.MOVIE_ID = C.MOVIE_ID;
-- 위 JOIN형식으로 MOVIE, CUSTOMER 테이블 조인하여, 전체 데이터를 출력하세요..

--EX1) 사원정보(EMP),부서정보(DEPT)를 기준으로 부서번호, 부서명, 사원번호, 사원명, 급여를 출력해보세요..
SELECT D.DEPTNO "부서번호", DNAME "부서명", EMPNO "사원번호", ENAME "사원명", SAL "급여"
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO;
--EX2) 영화 정보에 영화장르, 영화타이틀, 고객이름을 출력하세요
SELECT GENRE "영화장르", TITLE "영화타이틀", NAME "고객이름"
FROM MOVIE M, CUSTOMER C
WHERE M.MOVIE_ID = C.MOVIE_ID;

/* # INNER JOIN형식
SELECT E.*, D.DNAME, D.LOC
	FROM EMP01 E, DEPT01 D
	WHERE E.DEPTNO = D.DEPTNO
**/
/*
# 아웃조인(outer join)
1. 두 개 이상의 테이블을 조인할 때, 조인 조건에 맞는 데이터뿐만 아니라, 한쪼 테이블에만 존재하는 데이터도 
	결과에 포함시키는 조인 방식입니다.
2. outer join의 종류
	1) LEFT OUTER JOIN  : 기준테이블이 왼쪽테이블이고 오른쪽 테이블 값이 NULL이라도 출력해주는 형식을 말한다.
	2) RIGHT OUTER JOIN : 기준테이블이 오른쪽테이블이고 왼쪽 테이블 값이 NULL이라도 출력해주는 형식을 말한다.
	3) FULL OUTER JOIN : 양쪽 모두 포함해서 없는 쪽이 NULL이라도 출력해주는 형식을 말한다.
 * */

SELECT E.*, D.DEPTNO, DNAME, LOC
FROM EMP E
RIGHT OUTER JOIN DEPT D
ON E.DEPTNO = D.DEPTNO;
SELECT C.*,  M.*
FROM CUSTOMER C
LEFT OUTER JOIN MOVIE M
ON C.MOVIE_ID = M.MOVIE_ID;
SELECT C.*,  M.*
FROM CUSTOMER C
RIGHT OUTER JOIN MOVIE M
ON C.MOVIE_ID = M.MOVIE_ID;
SELECT C.*, M.*
FROM CUSTOMER C
FULL OUTER JOIN MOVIE M
ON C.MOVIE_ID = M.MOVIE_ID;




