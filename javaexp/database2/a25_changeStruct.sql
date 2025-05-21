/*
# oracle 테이블 구조 변경
1. oracle에서 테이블 구조를 변경하는 데는 ALTER TABLE 명령어를 사용합니다.
테이블 구조 변경은 컬럼 추가, 삭제, 수정과 같은 작업을 포함할 수 있습니다. 이러한 변경을 통해
테이블의 스키마를 수정하거나 데이터를 효율적으로 저장할 수 있는 방식으로 구조를 변경할 수 있습니다.
2. 주요 ALTER TABLE 명령어
	1) 컬럼 추가(ADD)
		새로운 컬럼을 테이블에 추가할 수 있습니다.
		ALTER TABLE 테이블명
		ADD( 컬럼명 데이터유형);
	2) 컬럼 삭제(DROP)
		기존 컬럼을 테이블에서 삭제할 수 있습니다.
		ALTER TABLE 테이블명
		DROP COLUMN 삭제할컬럼
	3) 컬럼 수정(MODIFY)
		컬럼의 데이터 타입이나 제약 조건을 변경할 수 있습니다.
		ALTER TABLE 테이블명
		MODIFY(컬럼명 데이터유형)
	4) 테이블 이름 변경(RENAME)
		테이블의 이름을 변경할 수 있습니다.
		ALTER TABLE 테이블명 
		RENAME TO  테이블명
	5) 컬럼 이름 변경(RENAME COLUMN)
		기존 컬럼의 이름을 변경할 수 있습니다.
		ALTER TABLE 테이블명
		RENAME COLUMN 기존컬럼명 TO 새로운 컬럼명
	6) 컬럼의 제약 조건 추가/삭제(ADD/DROP CONSTRAINT)
		기존 테이블에 제약 조건을 추가하거나 삭제 할 수 있습니다.
		- 제약 조건 초가
		ALTER TABLE 테이블명
		ADD CONSTRAINT 제약조건명  제약조건유형(컬럼명)
		- 제약 조건 삭제
		ALTER TABLE 테이블명
		DROP CONSTRAINT 제약조건명
 * */
SELECT * FROM EMP08;
CREATE TABLE EMP08
AS SELECT EMPNO, ENAME, JOB FROM EMP;
-- 주소 컬럼을 추가..
ALTER TABLE EMP08
ADD ADDRESS VARCHAR2(500);
SELECT * FROM EMP08;
SELECT * FROM EMP07;
-- EX) EMP07 테이블에 EMAIL을 추가하세요  DEFAULT 'xxxx.gmail.com' 설정.
ALTER TABLE EMP07
ADD EMAIL VARCHAR2(100) DEFAULT 'XXX.gmail.com';
SELECT * FROM EMP04;
-- 컬럼 삭제
ALTER TABLE EMP04
DROP COLUMN DEPTNO;
SELECT * FROM EMP04;
-- 테이블 삭제 DROP TABLE 테이블명;
SELECT * FROM EMP02;
-- EX) EMP02에서 사원번호 사원명 직책을 제외한 모든 컬럼 삭제 처리.
ALTER TABLE EMP02
DROP COLUMN MGR;
ALTER TABLE EMP02
DROP COLUMN HIREDATE;
ALTER TABLE EMP02
DROP COLUMN SAL;
ALTER TABLE EMP02
DROP COLUMN COMM;
ALTER TABLE EMP02
DROP COLUMN DEPTNO;
SELECT * FROM EMP02;




