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
	
*/