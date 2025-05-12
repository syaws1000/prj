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
-- 6. rs.next(), rs.getXXX()


-- sql을 통한 메서드 선언 연습문제
-- 1. 사원번호를 통하여 급여을 처리하는 sql과 메서드를 선언하세요..
-- 2. 사원명을 통하여 사원번호를 처리하는 sql과 메서드를 선언하세요.
-- 3. 
SELECT * FROM EMP;



-- 1. SQL
-- 2. 입력/출력값 정리
-- 3. 메서드 선언
-- 4. try catch문 복사
-- 5. pstmt.setXXX 설정
-- 6. rs.next(), rs.getXXX()