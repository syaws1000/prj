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

-- 3. 메서드 선언  : 다중열(받기위해서 Dto객체를 생성 처리..)
/*
public Dept getDeptByDeptno(int deptno){
	Dept dept = null;
	String sql = "SELECT * FROM DEPT WHERE DEPTNO = ?";
	return dept;
}
 * */
-- 4. try catch문 복사
-- 5. pstmt.setXXX 설정
-- 6. rs.next(), rs.getXXX()




SELECT * FROM STUDENT WHERE NO = 1;
-- 위 내용을 처리하기위한 Dto(Student)
-- 입력 : int no;
-- 결과 : int no; String name; int kor; int eng; int math;
/*
st=new Student(
	rs.getInt("NO"),
	rs.getString("NAME"),
	rs.getInt("KOR"),
	rs.getInt("ENG"),
	rs.getInt("MATH")
	);

결과를 한번에 받을 수 있는 Dto
class Student{
	private int no;
	private String name;
	private int kor;
	private int eng;
	private int math;
	// 생성자. get/set 메서드 생성.
}
메서드 선언.
public Student getStudent(int no){
	Student st = null;
	String sql = "SELECT * FROM STUDENT WHERE NO = ?";
	return st;
}

메서드 내용 복사(틀)
main()



 * */
SELECT * FROM CART_ITEM;
SELECT * FROM CART_ITEM WHERE CART_ID=1;
-- EX) 위 기준 DTO 만들기 class명 CartItem
/*
class CartItem{
	private String cartId; // snake case(CART_ID)를 자바에서 사용시 camel case로
	private int userId;
	private String productName;
	private int quantity;
	private int pricePerItem;
	private Date addedDate;
	
}
 * */

-- 1. SQL
SELECT * FROM DEPT WHERE DNAME LIKE '%A%' AND LOC LIKE '%A%';
-- 2. 입력/출력값 정리
/*
입력 : String dname, String loc ===> class Dept(여러개의 입력값을 위해 DTO)
출력 : int deptno, String dname, String loc 
		==> class Dept(다중열) ==> List<Dept> (다중행)
**/
-- 3. 메서드 선언
/*
public List<Dept> getDeptList(Dept sch){
	List<Dept> dlist = new ArrayList<Dept>();
	String sql = "SELECT * FROM DEPT WHERE DNAME LIKE ? AND LOC LIKE ?";
	return dlist;
}
 * */
-- 4. try catch문 복사
-- 5. pstmt.setXXX 설정
---   pstmt.setString(1, sch.getDname());
---   pstmt.setString(2, sch.getLoc());
-- 6. rs.next(), rs.getXXX()
--    while(rs.next()){
--      list.add(new Dept(rs.getInt("DEPTNO"), rs.getString("DNAME"), rs.getString("LOC")));
--  }

-- 
SELECT * FROM DEPT;
--  부서번호와 직책을 통해서 검색된 내용을 처리하는 DAO 메서드를 만들어 보세요..
-- 1. SQL
SELECT * FROM EMP WHERE DEPTNO = 30 AND JOB  = 'SALESMAN';
---------------------
-- 2. 입력 : int deptno, String job ==> Emp( int deptno, String job)
--    출력 : int empno, String ename, String job, int mgr, Date hiredate, double sal,
--          double comm, int deptno ==> Emp(..전체 데이터 처리..)여러열 ==> List<Emp> 여러행
-- 3. class 생성자, 선언

----------------------------------------------
-- 4. 메서드 선언
----------------
-- 5. try 복사
-- 6. pstmt 설정
-- 7. rs 설정




