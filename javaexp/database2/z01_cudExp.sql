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
	String sql = "INSERT INTO EMP10 VALUES(EMP10_SEQ.NEXTVAL, ?, ?, ?, TO_DATE(?,'YYYY-MM-DD'), ?,?,?)";
	
	return insCnt;
}
 
 * * */
SELECT * FROM FAMILY;  -- FAMILY_SEQ 생성.. START WITH 7
CREATE SEQUENCE FAMILY_SEQ
       START WITH 7;
-- 1. SQL
INSERT INTO FAMILY VALUES(FAMILY_SEQ.NEXTVAL, '홍길동',1);
-- 2. DTO
/*
class Family
	private int personId;
	private String name;
	private int parentId;
	
 * */
-- 3. 메서드 기본 선언
/*
public int insertFamily(Family ins){
	int insCnt = 0;
	String sql = "INSERT INTO FAMILY VALUES(FAMILY_SEQ.NEXTVAL, ?,?)";
	return insCnt;
}
 * */
----------------------------------------------
-- 4. TRY CATCH 복사 및 PSTMT 처리..
-- 5. MAIN() 테스트  확인..
-- 수정/삭제  CUD 동일한 패턴..
SELECT * FROM DEPT01;
-- 1. SQL 작성
UPDATE DEPT01
   SET DNAME = '인사',
       LOC = '성남'
  WHERE DEPTNO = 30;    
-- 2. VO/DTO
-- 3. 메서드
/*
public int updateDept01(Dept upt){
	int uptCnt = 0;
	String sql = "UPDATE DEPT01
   					SET DNAME = ?,
       				LOC = ?
  				WHERE DEPTNO = ? ";
	return uptCnt;
}

 * */

SELECT * FROM FAMILY; 
UPDATE FAMILY
	SET NAME = '마길동',
	    PARENT_ID = 2
	WHERE PERSON_ID = 7;
/*
public int updateFamily(Family upt){
	int uptCnt = 0;
	String sql = "UPDATE FAMILY
					SET NAME = ?,
					    PARENT_ID = ?
					WHERE PERSON_ID = ?";
	return uptCnt;
	
}
 * */

SELECT * FROM DEPT01;
DELETE FROM DEPT01 WHERE DEPTNO = 81;
/*
public int deleteDept01(int deptno){
	int delCnt = 0;
	String sql = "DELETE FROM DEPT01 WHERE DEPTNO = ?";
	
	return delCnt;
}

 * */
SELECT * FROM EMP10;
DELETE FROM EMP10 WHERE EMPNO = 2001;





