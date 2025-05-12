-- 1행1열
-- 1. SQL
-- 사원의 갯수
SELECT COUNT(*) CNT FROM EMP WHERE DEPTNO=10;
-- 2. 입력/출력값 정리
-- 입력값 부서번호 int
-- 출력  갯수 int
-- 3. 메서드 선언
/*
public int getCountEmp(int deptno){
	int count = 0;
	String sql = "SELECT COUNT(*) CNT FROM EMP WHERE DEPTNO=?";
	
	return count;
} 

 * */

-- 4. try catch문 복사
-- 5. pstmt.setXXX 설정
--    매개변수로 데이터를 ?에 연결 처리..	
-- 6. rs.next(), rs.getXXX()
--    결과를 처리해주는 내용..


-- sql을 통한 메서드 선언 연습문제
-- 1. 사원번호를 통하여 급여을 처리하는 sql과 메서드를 선언하세요..
SELECT SAL FROM EMP WHERE EMPNO = 7369;
/*
입력 int empno, 결과값 double sal;
public double getSalByEmpno(int empno){
	double sal = 0;
	String sql = "SELECT SAL FROM EMP WHERE EMPNO = ?";
	
	return sal;
}
*/
-- 2. 사원명을 통하여 사원번호를 처리하는 sql과 메서드를 선언하세요.
SELECT EMPNO FROM EMP WHERE ENAME = 'SMITH';
/*
입력 : String name;
결과 : int empno
public int getEmpnoByEname(String ename){
	int empno = 0;
	String sql = "SELECT EMPNO FROM EMP WHERE ENAME = ?";	
	return empno;
}

*/
-- 3. 급여를 통하여 직책을 처리하는 sql과 메서드를 선언하세요.
SELECT * FROM EMP;
SELECT JOB FROM EMP WHERE SAL = 800;
/*
입력 : double sal
결과 : String job
public String getJobBySal(double sal){
	String job = "";
	String sql = "SELECT JOB FROM EMP WHERE SAL = ?";
	
	
	return job;
}

*/

SELECT * FROM EMP;

-- 1. SQL(다수행 1열)
SELECT ENAME FROM EMP WHERE DEPTNO = 10;
-- 2. 입력/출력값 정리
--    입력 : int deptno
--    결과값 : List<String> enames = new ArrayList<String>();
----   결과값의 유형들 List<Integer>  List<Int>(x)  List(int) (x)
--                 List<Double>  List<double>(x)
--                 List(Date)    
-- 3. 메서드 선언
/*
public List<String> getEnamesByDeptno( int deptno){
	List<String> enames = new ArrayList<String>();
	String sql = "SELECT ENAME FROM EMP WHERE DEPTNO = ?";
	return enames;
}
 * */
-- 4. try catch문 복사
-- 5. pstmt.setXXX 설정
-- 6. rs.next(), rs.getXXX()

-- 다수행1열 sql 처리 메서드 선언 연습.
-- 1 
SELECT * FROM EMP;


-- 1. SQL
SELECT * FROM DEPT WHERE DEPTNO = 10;
-- 2. 입력/출력값 정리
---   입력 : int deptno
--    출력 : int deptno; String dname; String loc;
---         필드명 ==> 컬럼명 소문자, 
--          데이터유형 
--          VARCHAR2(), vARCHAR()  ==> String
--          Number(7,2) ==> double
--          Number(4,0) ==> int
--          DATE   ==> Date(java.util.Date)
--          ==> Dto 객체 필요 class Dept

-- 3. 메서드 선언
-- 4. try catch문 복사
-- 5. pstmt.setXXX 설정
-- 6. rs.next(), rs.getXXX()





-- 1. SQL
-- 2. 입력/출력값 정리
-- 3. 메서드 선언
-- 4. try catch문 복사
-- 5. pstmt.setXXX 설정
-- 6. rs.next(), rs.getXXX()


