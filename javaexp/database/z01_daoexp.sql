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



-- 1. SQL
-- 2. 입력/출력값 정리
-- 3. 메서드 선언
-- 4. try catch문 복사
-- 5. pstmt.setXXX 설정
-- 6. rs.next(), rs.getXXX()