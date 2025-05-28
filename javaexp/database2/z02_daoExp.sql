-- # 1행 1열 sql dao 기능 메서드
--	1) SQL 작성
SELECT COUNT(*) COUNT FROM EMP10 WHERE DEPTNO = 10;
SELECT MAX(SAL) MXSAL FROM EMP10 WHERE JOB = 'SALESMAN';
--	2) SQL의 입력값과 결과값이 무엇인지 파악
-- 입력값 : DEPTNO : 10  => int deptno
-- 출력값 : COUNT(*): 5  => int count
-- 입력값 : JOB : SALESMAN => String job
-- 출력값 : MXSAL : 1600  ==> double mxsal 
--	3) 위 내용을 기준으로 메서드 선언
--		입력값 : 매개변수 선언
--		결과값 : 리턴값 선언
/*
public int getEmpCount(  int deptno ){
	int count = 0;
	String sql = "SELECT COUNT(*) COUNT FROM EMP10 WHERE DEPTNO = ?";
	
	return count;
}
public double getEmpMaxSal( String job ){
	double mxsal = 0;
	String sql = "SELECT MAX(SAL) MXSAL FROM EMP10 WHERE JOB = ?";
	
	return mxsal;
}	

**/
--	4) TRY CATCH 블럭 복사
--	5) pstmt.setXXX(1, XXX);  ?에 맞게 데이터 유형과 실제값할당.
--	6) rs.next() : 행단위 커서 이동
--	   rs.getXXX("컬럼명") : 열단위 컬럼과 타입 설정
--	7) main() 결과 확인..