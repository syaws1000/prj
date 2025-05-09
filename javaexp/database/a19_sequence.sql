/*
# SEQUENCE
1. 주로 고유한 숫자값(id)을 자동으로 생성해주는 객체로, 자동 증가번호를 생성할 때,
	사용합니다. 예를 들어, 회원가입할 때, 회원번호를 1, 2, 3, 순으로 자동 부여하고 
	싶을 때 아주 유요하게 사용하죠..
2. 주요 특징
	1) SEQUENCE는 자동으로 증거하거나 감소하는 숫자 시퀀스를 생성하는 데이터베이스 객체입니다.
	2) 주로 기본키(PK) 자동 생성 용도로 사용됩니다.
	3) NEXTVAL, CURRVAL을 통해 다음 값 또는 현재값을 가져올 수 있습니다.
3. 핵심 속성값
	1) START WITH : 처음 시작할 숫자 지정(기본값:1)
	2) INCREMENT BY : 증가 또는 감소 간격(기본값:1)
	3) MAXVALUE : 시퀀스의 최대값 지정
	4) MINVALUE : 시퀀스의 최소값 지정	
	5) CYCLE : 최대값 도달 시 다시 처음으로 돌아갈지 여부(기본은 NOCYCLE)
	6) CACHE : 메모리에 미리 시퀀스 값을 몇 개 저장(기본값 : 20)
	7) NOCACHE : 매번 디스크에 값을 가져오도록 설정
	8) ORDER : 시퀀스 값이 생성된 순서를 보장(병렬 처리시 필요)
4. 기본 형식
	1) CREATE SEQUENCE 시퀀스명; 1부터 시작하는 
	2) CREATE SEQUENCE 시퀀스명
			START WITH 1000;  1000부터 시작하는 시퀀스 생성.
	3) 시퀀스 활용
		시퀀스명.NEXTVAL : 1씩 카운트업..
		시퀀스명.CURRVAL : 현재 시퀀스번호
	4) 시퀀스 삭제 
		DROP SEQUENCE 시퀀스명;	
		
**/
CREATE SEQUENCE SEQ_01;
SELECT SEQ_01.NEXTVAL FROM DUAL;
CREATE TABLE EMP06
AS SELECT EMPNO-5000 EMPNO, ENAME, SAL FROM EMP;
SELECT * FROM EMP06;
CREATE SEQUENCE EMP06_SEQ
	START WITH 3000;
INSERT INTO EMP06(EMPNO) VALUES(EMP06_SEQ.NEXTVAL); -- 10번 수행
SELECT * FROM EMP06;

INSERT INTO EMP06 VALUES(EMP06_SEQ.NEXTVAL,'홍길동',3500);
INSERT INTO EMP06 VALUES(EMP06_SEQ.NEXTVAL,'김길동',4500);
INSERT INTO EMP06 VALUES(EMP06_SEQ.NEXTVAL,'신길동',5500);
INSERT INTO EMP06 VALUES(EMP06_SEQ.NEXTVAL,'마길동',6500);
DROP TABLE EMP07;
CREATE TABLE EMP07
AS SELECT EMPNO-6000 EMPNO, ENAME, DEPTNO FROM EMP;
SELECT * FROM EMP07;
-- 시작번호가 1935인 SEQUENCE EMP07_SEQ 를 만들고, 데이터 입력하세요..
CREATE SEQUENCE EMP07_SEQ
     START WITH 1935;
INSERT INTO EMP07 VALUES(EMP07_SEQ.NEXTVAL, '홍길동', 10);
INSERT INTO EMP07 VALUES(EMP07_SEQ.NEXTVAL, '김길동', 20);
INSERT INTO EMP07 VALUES(EMP07_SEQ.NEXTVAL, '신길동', 30);
INSERT INTO EMP07 VALUES(EMP07_SEQ.NEXTVAL, '마길동', 40);
CREATE TABLE EMP08
AS SELECT EMPNO-5500 EMPNO, ENAME, JOB FROM EMP;
SELECT * FROM EMP08;
--  EMP08_SEQ 를 2435부터 시작하게 만들고, EMP08에 데이터 입력하세요..
CREATE SEQUENCE EMP08_SEQ
    START WITH 2435;
INSERT INTO EMP08 VALUES(EMP08_SEQ.NEXTVAL,'오길동','사원');
INSERT INTO EMP08 VALUES(EMP08_SEQ.NEXTVAL,'김길동','대리');
INSERT INTO EMP08 VALUES(EMP08_SEQ.NEXTVAL,'마길동','과장');
INSERT INTO EMP08 VALUES(EMP08_SEQ.NEXTVAL,'하길동','차장');








