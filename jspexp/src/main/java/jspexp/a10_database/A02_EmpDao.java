package jspexp.a10_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import jspexp.a01_vo.Order;
import jspexp.a10_database.dto.Dept;
import jspexp.a10_database.dto.Emp;

/*
import = "jspexp.a10_database.A02_EmpDao"
import = "jspexp.a10_database.dto.Emp"
 */
public class A02_EmpDao {
	
	
	
	public List<Emp> getEmpAll(){
		List<Emp> list  = new ArrayList<Emp>();
		String sql = "SELECT * FROM EMP10";
		// 1. 연결
		// 2. 대화
		// 3. 결과
		try( Connection con = DB.con();
			 PreparedStatement pstmt = con.prepareStatement(sql);
			 ResultSet rs = pstmt.executeQuery()
				){
			
			while(rs.next()) { // 다중행일때, while 사용  
				// rs.get데이터유형("조회된 컬럼명")
				// rs.getInt("EMPNO"),rs.getString("ENAME"),rs.getString("JOB"),rs.getDate("HIREDATE"),rs.getDouble("SAL"),rs.getDouble("COMM"),rs.getInt("DEPTNO")
				//            Emp(int empno, String ename, String job, int mgr, Date hiredate, double sal, double comm, int deptno)
				list.add(new Emp(rs.getInt("EMPNO"),rs.getString("ENAME"),rs.getString("JOB"),rs.getInt("MGR"),
								rs.getDate("HIREDATE"),rs.getDouble("SAL"),rs.getDouble("COMM"),rs.getInt("DEPTNO") ));
			}
			
			System.out.println("데이터 로딩 완료:"+list.size());
		}catch(SQLException e) {
			System.out.println("DB처리 에러:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("기타 에러:"+e.getMessage());
		}
	
		
		
		return list;
	}

	public List<Order> getOrderAll(){
		List<Order> list  = new ArrayList<Order>();
		String sql = "SELECT * FROM ORDERS";
		// 1. 연결
		// 2. 대화
		// 3. 결과
		try( Connection con = DB.con();
			 PreparedStatement pstmt = con.prepareStatement(sql);
			 ResultSet rs = pstmt.executeQuery()
				){
			
			while(rs.next()) { // 다중행일때, while 사용  
				// rs.get데이터유형("조회된 컬럼명")
				// (int orderId, String wizardName, Date orderDate, int orderAmount)
				list.add(new Order(rs.getInt("ORDER_ID"),rs.getString("WIZARD_NAME"),
								  rs.getDate("ORDER_DATE"),rs.getInt("ORDER_AMOUNT") ));
			}
			
			System.out.println("데이터 로딩 완료:"+list.size());
		}catch(SQLException e) {
			System.out.println("DB처리 에러:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("기타 에러:"+e.getMessage());
		}
	
		
		
		return list;
	}

	public List<Emp> getEmpSch(Emp sch){
		List<Emp> list  = new ArrayList<Emp>();
		String sql = "SELECT * FROM EMP10 WHERE ENAME LIKE ? AND JOB LIKE ?";
		// 1. 연결
		// 2. 대화
		// 3. 결과
		// a19_empSchList.jsp  사원명:[    ] 직책:[    ]  [검색]
		try( Connection con = DB.con();
			 PreparedStatement pstmt = con.prepareStatement(sql);
				){
			if(sch.getEname()==null) sch.setEname("");
			if(sch.getJob()==null) sch.setJob("");
			pstmt.setString(1, "%"+sch.getEname()+"%");
			pstmt.setString(2, "%"+sch.getJob()+"%");
			try(ResultSet rs = pstmt.executeQuery()){
				while(rs.next()) { // 다중행일때, while 사용  
					list.add(new Emp(rs.getInt("EMPNO"),rs.getString("ENAME"),rs.getString("JOB"),rs.getInt("MGR"),
									rs.getDate("HIREDATE"),rs.getDouble("SAL"),rs.getDouble("COMM"),rs.getInt("DEPTNO") ));
				}
				
				System.out.println("데이터 로딩 완료:"+list.size());				
			}
			

		}catch(SQLException e) {
			System.out.println("DB처리 에러:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("기타 에러:"+e.getMessage());
		}
	
		
		
		return list;
	}

	public int insertEmp10(Emp ins){
		int insCnt = 0;
		String sql = "INSERT INTO EMP10 VALUES(EMP10_SEQ.NEXTVAL, ?, ?, ?, "
				+ "TO_DATE(?,'YYYY-MM-DD'), ?,?,?)";
		// try() with resources 구문은 예외가 발생하면 자동으로 자원해제와 롤백이 처리된다.
		try( Connection con = DB.con();
			 PreparedStatement pstmt = con.prepareStatement(sql);
				){
				con.setAutoCommit(false); // 자동 commit 방지
				// Emp(String ename, String job, int mgr, String hiredateStr, 
				// double sal, double comm, int deptno)
				pstmt.setString(1, ins.getEname());  // 매핑되는 데이터 처리..
				pstmt.setString(2, ins.getJob());
				pstmt.setInt(3, ins.getMgr());
				pstmt.setString(4, ins.getHiredateStr());
				pstmt.setDouble(5, ins.getSal());
				pstmt.setDouble(6, ins.getComm());
				pstmt.setInt(7, ins.getDeptno());
				insCnt = pstmt.executeUpdate(); 
				if(insCnt == 0) {
					System.out.println("등록 실패"); // 등록시 실패시 원복
					con.rollback();
				}else {
					System.out.println("등록 성공");  
					con.commit();
				}
				// 등록 수행 후, 등록 건수 리턴..
	
			}catch(SQLException e) {
				System.out.println("DB처리 에러:"+e.getMessage());
	
			}catch(Exception e) {
				System.out.println("기타 에러:"+e.getMessage());
			}		
		
		return insCnt;
	}

	public int deleteEmp10(int empno){
		int delCnt = 0;
		String sql = "DELETE FROM EMP10 WHERE EMPNO = ?";
		// try() with resources 구문은 예외가 발생하면 자동으로 자원해제와 롤백이 처리된다.
		try( Connection con = DB.con();
			 PreparedStatement pstmt = con.prepareStatement(sql);
				){
				con.setAutoCommit(false); // 자동 commit 방지
				pstmt.setInt(1, empno);
				delCnt = pstmt.executeUpdate(); 
				if(delCnt == 0) {
					System.out.println("등록 실패"); // 등록시 실패시 원복
					con.rollback();
				}else {
					System.out.println("등록 성공");  
					con.commit();
				}
				// 등록 수행 후, 등록 건수 리턴..
	
			}catch(SQLException e) {
				System.out.println("DB처리 에러:"+e.getMessage());
	
			}catch(Exception e) {
				System.out.println("기타 에러:"+e.getMessage());
			}		
		
		return delCnt;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A02_EmpDao dao = new A02_EmpDao();
		System.out.println("삭제건수:"+dao.deleteEmp10(2003));
		
		//System.out.println("### 등록 처리 ####");
		//int insCnt = dao.insertEmp10(new Emp("마길동","대리", 7789,"2025-05-01",4000,100,20));
		//System.out.println("등록된 건수:"+insCnt);		
		
		// [()()()]
		for(Emp e:dao.getEmpAll()) {
			System.out.print(e.getEmpno()+"\t");
			System.out.print(e.getEname()+"\t");
			System.out.print(e.getJob()+"\t");
			System.out.print(e.getSal()+"\n");
		}
		System.out.println("# 사원정보 검색 #");
		
		for(Emp e:dao.getEmpSch(new Emp("A","A"))) {
			System.out.print(e.getEmpno()+"\t");
			System.out.print(e.getEname()+"\t");
			System.out.print(e.getJob()+"\t");
			System.out.print(e.getSal()+"\n");
		}
		System.out.println();		
		
		
	}

}
/*
# DAO(Data Access Object)개요
1. DAO는 데이터베이스에 접근하여 데이터를 처리하는 객체입니다. DAO 패턴을 사용하면 데이터베이스와의
상호작용을 추상화하여, 비지니스 로직과 데이터 접근 로직을 분리할 수 있습니다. 이는 코드의 유지보수성을 높이고,
재사용성을 증가시키며, 데이터베이스 접근을 관리하기 용이하게 만듭니다.
	# 쉬운 버젼
	DAO는 데이터를 관리하는 도우미라고 생각하면 됩니다. 예를 들어, 우리가 학교에 가서 성적이나 정보를 기록한다고
	할 때, 성적을 기록하는 책상이 바로 DAO입니다.
	1. 학교(프로그램)에는 선생님(비즈니스 로직)이 있습니다. 선생님은 수업을 하고 학생들에게 과제를 주지만,
		성적을 기록하는 책상을 따로 있습니다.
	2. 선생님은 성적으로 직접 기록하지 않아요. 대신 책상에 성적을 전달합니다.
	3. 이 책상은 성적을 잘 정리해서 보관하고, 선생님이 필요할 때 다시 꺼내서 보여줍니다.
	ex) 선생님이 성적을 책상에 기록하기 위해서 책상에 성적을 넣어달라고 말합니다.(기능메서드에 매개변수 메서드명 호출)
		책상은 성적을 잘 정리해놓고, 나중에 선생님이 원할 때 꺼낼 수 있도록 도와줍니다.
	DAO는 이렇게 데이터(성적)를 정리하고 관리하는 역할을 합니다. 선생님(비지니스 로직)은 데이터를 관리하는 방법을
	몰라도, 책상(Dao)를 통해 편리하게 성적으로 관리할 수 있게 되는 거죠
	!! 이렇게 하는 이유(왜? 이렇게 하나요?)
	비지니스 로직(수업하는 선생님)은 데이터를 저장하거나 관리하는 방법을 몰라도 됩니다. 대신 DAO(책상)가 대신 관리해주니까요
	이 방법은 조금 더 깔끔하고 쉽게 관리할 수 있습니다.
2. 핵심 개념
	1) DAO : 데이터베이스에 CRUD(생성, 조회, 수정, 삭제)작업을 수행하는 객체
	2) DTO(Data Transfer Object):데이터베이스에서 가져온 데이터를 저장하는 객체. 주로 POJO(Plain Old Java
		Object - VO)형태로 사용
	3) Connection : 데이터베이스와 연결을 담당
	4) PreparedStatement : SQL쿼리를 실행할 때 사용하는 객체
	5) ResultSet : 쿼리 결과를 저장하는 객체(컬럼을 포함 행/열 형태)
3. 처리 순서
	1) DTO/VO(Value Object)클래스 선언하기 : 데이터베이스를 통해 전달하고 결과값을 받아오는 객체를 위한 클래스 선언..
		DTO는 계속적으로 변경이 가능하는 데이터
		VO한번 정해지면 불변하는 정보 데이터
	2) DAO 기능메서드 선언
		- 조회
		- 등록
		- 수정
		- 삭제
	3) 조회 처리
		- sql : 확인  매개변수 결과값을 확인 후,
			매개변수 : where 조건이나, 입력값을 어떻게 할 것인지 결정하여 DTO/VO로 정한다.
			결과내용 : select의 경우 단일행 단일열데이터, 단일행 다중열, 다중행 단일열데이터, 다중행다중행데이터로 구분하여
								단일변수로 리턴,       DTO      List<단일유형>   List<DTO>
		- 기능메서드의 매개변수와 리턴값 선언.						
			public String getEname(int empno)			 
			public Emp getEmp(int empno)			 
			public List<String> getEnames(int deptno)			 
			public List<Emp> getEmp(Emp sch)
		- 해당 코드블럭안에 리턴값에 따른 데이터 유형 선언
		- sql 구문 처리(문자열에 할당 처리)
		- 연결 객체 선언 Connection con = DB.con();
		- 대화 객체 할당 PreparedStatement pstmt = con.parepareStatement(sql)
		- 결과 객체 할당. ResultSet rs = pstmt.executeQuery()
		- 결과 객체에 따른 처리
			단일 행 if(rs.next())
			다중 행 while(rs.next()) : 행단위로 커서를 이동시키면서 해당 행 안에서 열의 데이터를 처리한다.
			열단위 처리 내용 : 열의 컬럼명과 데이터유형에 따라 처리할 수 있다.
				rs.getInt("empno") 상단에 컬럼명이 empno인 경우에 사원번호가 int 형인경우
				rs.getString("ename") 상단에 컬럼명이 ename인 경우에 데이터형이 문자열로 할당할 수 있는 경우
		- 위 내용을 외부에서 객체로 손쉽게 처리하기 위하여 DTO객체에 담는 처리는 한다.
				new Emp(rs.getInt("empno"), rs.getString("ename"),....)(
		- main()를 확인
			위 처리한 내용을 main()에서 DAO객체를 생성하여 확인한다.
		- 웹화면에서 확인..
			jsp등 웹에서 DAO 객체를 import 하여, for문을 통해서 table 등에서 데이터를 처리 결과를 확인한다.
			
			
						 
									 
									 
			
		
		
		
		
		
	


 
 */