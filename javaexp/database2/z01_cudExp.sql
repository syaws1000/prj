SELECT * FROM EMP10;
UPDATE EMP10
   SET EMPNO = EMPNO-6000;
-- SQL 작성..
CREATE SEQUENCE EMP10_SEQ
	START WITH 2000;   -- 자동 SEQUENCE 생성
ALTER TABLE  EMP10
MODIFY( ENAME VARCHAR2(50), JOB VARCHAR2(50) ); -- 구조변경..

INSERT INTO EMP10 VALUES(EMP10_SEQ.NEXTVAL, '홍길동', '사원', 7698, 
	TO_DATE('2025-05-26','YYYY-MM-DD'), 3000,100,10);
-- 입력 유형과 이에 맞는 DTO 생성..
/* 입력값이 type과 컬럼명에 매칭되는 객체를 생성..
class Emp10{
	private String ename;
	private String job;
	private int mgr;
	private String hiredateStr;
	private double sal;
	private double comm;
	private int deptno;
	
}
1. 추가 DTO 생성.
2. 비슷한 DTO에 속성을 추가하고, 생성자와 set/get 추가..

public int insertEmp10(Emp ins){
	int insCnt = 0;
	String sql = "";
	
	return insCnt;
}
 
 * * */

