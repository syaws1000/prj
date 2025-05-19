/*
# 무결성 제약조건(constraints)
1. 무결성이란 데이터의 흠결이 없는 것으로 데이터의 정확성과 일관성을 의미한다.
   주민번호가 중복되지 않게 처리한다던지, 부서정보가 있는 테이블에 있는 부서번호만
   등록되게 한다든지, 학년 컬럼에 1~4학년만 입력되게 범위를 정하는 등 해당 데이터가
   데이터의 정확성과 일관성에 맞게 등록/수정이 가능하게 하는 것을 말한다.
2. 데이터의 정확성을 유지하기 위해서는 다양한 종류의 업무규칙을 고려하여야 한다.
	1) 주민번호는 식별이 가능하게 입력
	2) 학사테이블에 학생이름은 반드시 입력하게 처리
	3) 수강과목은 수강테이블에 등록된 과목만 가능하게 하는 것 등을 말한다.
3. 데이터 무결성 제약조건의 장점
	1) 테이터 생성시, 무결성 제약조건을 정의 가능
		- 생성 후에도 제약조건 변경 삭제 가능
	2) 테이블에 대해 정의, 데이터 딕션너리에 저장되므로
		응용프로그램에서 입력한 모든 데이터에 대해 동일하게 적용
	3) 제약조건이 걸려 있는 컬럼에 위반되면 해당 행 전체가 입력되지 않는다.
4. 무결성 제약조건의 종류
	1) NOT NULL : 열에 NULL을 포함 할 수 없음.
	2) UNIQUE KEY : 테이블에 모든 행에 고유값을 갖는 열 또는 열조합을 지정해야 한다.
		EX) 학번, 주민번호, 사원 번호는 중복되지 않아야 한다. 단) NULL은 입력가능하고, NULL이 여러 개 처리되는 중복은 가능
	3) PRIMARY KEY : 해당 컬럼 값은 반드시 존재해야 하며 유일해야 한다.
		NOT NULL + UNIQUE의 결합형태
		주로 테이블에서 식별해야할 컬럼 즉, KEY를 설정할 때, 사용된다.
		EX) EMP테이블의 EMPNO, DEPT테이블의 DEPTNO
	4) FOREIGN KEY : 한 열과 참조되는 테이블의 열간에 외래 키 관계를 설정하고 시행
		EX) EMP테이블에 DEPTNO는 DEPTNO테이블에 DEPTNO가 있는 데이터만 입력
	5) CHECK : 해당 컬럼에 저장 가능한 테이터 값의 범위나 조건을 저장하여 처리
		EX) 학년1~4, 그외 데이터는 입력 불가능하게 처리..	
5. 제약 조건 이름 설정 규칙
	1) 이름 없이 생성하면 내부적 메타정보에 의해서 자동 생성이 된다.(USER_CONTSTRAINTS)
	2) 이름 설정하여 처리하는 겨우
		CONSTRAINTS 테이블명_컬럼명_제약조건종류(UK,NN, PR,FK,CK) 형식으로 처리한다.
	3) 메타정보로 제약조건 확인
		SELECT *
		FROM USER_CONSTRAINTS 
		WHERE TABLE_NAME = '테이블명대문자';		
 * */
-- NOT NULL 제약조건 설정과 메타정보로 제약조건 확인
SELECT * FROM STUDENT01;
-- 자동 제약조건 이름 설정
CREATE TABLE STUDENT01(
	NAME VARCHAR2(50) NOT NULL
);
SELECT * FROM STUDENT01;
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='STUDENT01';
INSERT INTO STUDENT01 VALUES(NULL);
SELECT * FROM STUDENT02;
--EX STUDENT02테이블 생성시
--   학생명, 국어, 영어, 수학점수를 컬럼을 지정하되 학생명과 국어 점수는 NOT NULL로 설정하세요..
CREATE TABLE STUDENT02(
	NAME VARCHAR2(50) NOT NULL,
	KOR NUMBER NOT NULL,
	ENG NUMBER,
	MATH NUMBER
);
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='STUDENT02';
INSERT INTO STUDENT02 VALUES('홍길동', NULL, 70,80);
INSERT INTO STUDENT02 VALUES('홍길동', 80, 70,80);
SELECT * FROM STUDENT02;
-- 제약조건 이름 지정 :. 컬럼명 타입  CONSTRAINT 테이블명_컬럼명_제약조건종류 제약조건 내용
-- 제약조건의 종류 약자:NN(NOT NULL), UK(UNIQUE KEY) PK(PRIMARY KEY), CK(CHECK), FK(FOREIGN KEY)
CREATE TABLE STUDENT03(
	NAME VARCHAR2(50) CONSTRAINT STUDENT03_NAME_NN NOT NULL
);
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='STUDENT03';
INSERT INTO STUDENT03 VALUES('마길동');
INSERT INTO STUDENT03 VALUES(NULL);
-- EX) MUSIC01 테이블에 타이틀, 가수명, 발매연도를 지정할 때, 타이틀과 가수명을 NOT NULL로 제약조건의 이름을
--     지정하여 테이블을 생성하세요.. 
CREATE TABLE MUSIC01(
	TITLE VARCHAR2(50) CONSTRAINT MUSIC01_TITLE_NN NOT NULL,
	SINGER VARCHAR2(50) CONSTRAINT MUSIC01_SINGER_NN NOT NULL,
	PUB_YEAR NUMBER(4,0) 
);
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='MUSIC01';
INSERT INTO MUSIC01(PUB_YEAR) VALUES(2025);--등록 불가, 제약조건 설정한 컬럼 입력해야 하기에..
INSERT INTO MUSIC01 VALUES('즐거운 노래','홍길동',2025);
SELECT * FROM MUSIC01;
-- UNIQUE KEY : 유일한 입력데이터를 처리할 때...
DROP TABLE STUDENT04;
CREATE TABLE STUDENT04(
	SNO NUMBER(5) CONSTRAINT STUDENT04_SNO_UK UNIQUE
);
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='STUDENT04';
INSERT INTO STUDENT04 VALUES(1001);
INSERT INTO STUDENT04 VALUES(NULL);
SELECT * FROM STUDENT04;
-- EX) STUDENT05테이블로  학번, 이름, 국어, 영어  처리하되 학번을 UNIQUE KEY 이름, 국어, 영어, 수학은 NOT NULL
--     설정해보세요..
CREATE TABLE STUDENT05(
	SNO NUMBER(5,0) CONSTRAINT STUDENT05_SNO_UK UNIQUE,
	NAME VARCHAR2(50) CONSTRAINT STUDENT05_NAME_NN NOT NULL,
	KOR NUMBER(3,0) NOT NULL,
	ENG NUMBER(3,0) NOT NULL,
	MATH NUMBER(3,0) NOT NULL
);
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='STUDENT05';














