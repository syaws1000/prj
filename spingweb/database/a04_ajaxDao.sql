--# data처리하는 ajax
--1. SELECT 주로 get방식
--	1) 1행1열 : 단일 데이터		단일매개변수

SELECT COUNT(*) FROM EMP10;  -- 사원정보의 갯수
-- 결과 ==> 자바의 리턴값 ==> 자바의 유형을 선언  EX) 15  ==> int
-- 입력 ==> 자바의 매개변수 ==> 자바의 유형을 선언  x  ==> ()
/*
dao
@Select("SELECT COUNT(*) FROM EMP10")
int getCountAllEmp();   메서드명의 의미에 맞게 선언..
 * */

SELECT COUNT(*) FROM EMP10 WHERE DEPTNO = 20;  -- 부서번호가 10인 사원의 갯수
-- 출력 ==> 리턴 ==> 5 ==> int
-- 입력 ==> 매개변수 ==> int deptno ==> @Param("deptno) int deptno
/*
 * 
 * 
dao
@Select("SELECT COUNT(*) FROM EMP10 WHERE DEPTNO = #{deptno}")
int getCountByDeptno(@Param("deptno") int deptno);
 * */

SELECT MAX(SAL) FROM EMP10 WHERE JOB = 'SALESMAN'; -- SALESMAN의 최대 급여 
-- 출력 : 1600 ==> int/double  리턴유형 선언
-- 입력 : SALESMAN ==> String ==> String job ==> @Param("job") String job
/*
@Select("SELECT MAX(SAL) FROM EMP10 WHERE JOB = #{job}")
double getMaxSalByJob( @Param("job") String job )
 * */
SELECT ENAME FROM EMP10 WHERE EMPNO = 1369;
-- 출력 : SMITH ==> String  리턴유형 선언
-- 입력 : 1369 ==> int  ==> int empno ==> @Param("empno") int empno
/*
@Select("SELECT COUNT(*) FROM EMP10")
int getCountAllEmp();

@Select("SELECT COUNT(*) FROM EMP10 WHERE DEPTNO = #{deptno}")
int getCountByDeptno(@Param("deptno") int deptno);

@Select("SELECT MAX(SAL) FROM EMP10 WHERE JOB = #{job}")
double getMaxSalByJob( @Param("job") String job ) 

@Select("SELECT ENAME FROM EMP10 WHERE EMPNO = #{empno}")
String getEnameByEmpno(@Param("empno") int empno);


***/

SELECT * FROM EMP10;
--  2) 다수행 1열 : 배열형(List) 데이터    여러매개변수
--  3) 1행 다수열 : 객체형 데이터	단일매개변수 
--  4) 다수행 다수열 : 객체형 List 데이터   여러매개변수
--2. INSERT 주로 post방식
--
--3. UPDATE 주로 put 방식
--
--4. DELETE 주로 delete 방식

--# ajax를 통한 CRUD(조회/등록/수정/삭제)
