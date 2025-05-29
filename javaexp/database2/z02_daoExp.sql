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
--	6) rs.next() : 행단위 커서 이동  하나 행 if(rs.next()) 여러행 while(rs.next()
--	   rs.getXXX("컬럼명") : 열단위 컬럼과 타입 설정

--	7) main() 결과 확인..
-- 다중행 단일열 
--	1) SQL 작성
SELECT ENAME FROM EMP10 WHERE JOB = 'SALESMAN';
--	2) SQL의 입력값과 결과값이 무엇인지 파악
--  입력값 : JOB "SALESMAN" String job
--  출력값 : ENAME  ALLEN WARD MARTIN TURNER  ==>    List<String> enames
--	3) 위 내용을 기준으로 메서드 선언
--		입력값 : 매개변수 선언
--		결과값 : 리턴값 선언
/*
public List<String> getEnamesByJob( String job ){
	List<String> enames = new ArrayList<String>();
	String sql = "SELECT ENAME FROM EMP10 WHERE JOB = ?";
	
	
	return enames;
}
List<Integer>  List<Double>  List<String>
 * */
SELECT SAL FROM EMP10 WHERE DEPTNO = 10;
-- 입력 : int deptno
-- 출력 : List<Double>
/*
public List<Double> getSalsByDeptno(int deptno){
	List<Double> sals = new ArrayList<Double>();
	String sql = "SELECT SAL FROM EMP10 WHERE DEPTNO = ?";
	return sals;
}	
 * */
 



--	4) TRY CATCH 블럭 복사
--	5) pstmt.setXXX(1, XXX);  ?에 맞게 데이터 유형과 실제값할당.
--	6) rs.next() : 행단위 커서 이동
--	   rs.getXXX("컬럼명") : 열단위 컬럼과 타입 설정
--	7) main() 결과 확인..
/*
# 단일행다중열..
1. 다중열을 데이터가 여러가지 유형의 type이 하나의 행에 나오기에 이것을 담을 수 있자 자바의 유형은 객체형이다.
  
 * */
SELECT * FROM DEPT01 WHERE DEPTNO = 20;
-- 입력 : int deptno
-- 출력 : 20	RESEARCH	DALLAS  ==> int deptno, String dname, String loc
--      ==> class   private int deptno;
--                  private String dname;
--                  private String loc;
--          class Dept
SELECT * FROM STUDENTS WHERE STUDENT_ID =3;
-- 입력 : int studentId 
-- 출력 : int studnetId,  String studentName, String subject, int score
/*
class Student{
	private int studnetId;
	private String studentName;
	private String subject;
	private int score;
}

 * */
SELECT * FROM MAGIC_ITEMS WHERE ITEM_ID=1;
-- 입력 : int itemId
-- 출력 : int itemId, String itemName, String itemType, String itemStatus, int itemPrice
/*
# 1행 다수열 처리..

 * */
SELECT * FROM DESSERT_ORDER WHERE ORDER_ID = 1;
/*
입력값 자바로 선언: int orderId
출력값 자바로 선언: int orderId, String customerName, String dessertName, 
			   int quantity, Date orderDate ==> class DessertOrder
Dto			   
			   
**/




