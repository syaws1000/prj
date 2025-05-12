package javaexp.a10_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class A04_ExpDao {

	public int getCountEmp(int deptno){
		int count = 0;
		String sql = "SELECT COUNT(*) CNT FROM EMP WHERE DEPTNO=?";
		try( Connection con = DB.con();
			PreparedStatement pstmt = con.prepareStatement(sql); ){
			pstmt.setInt(1, deptno);
			try(ResultSet rs = pstmt.executeQuery()){
				if(rs.next()) {  // 단일행 
					count = rs.getInt("CNT");
					// 컬럼과 데이터 유형에 따라  rs.get데이터유형("컬럼명");
					// 리턴할 결과값 count에 할당처리
				}
				System.out.println("데이터 로딩 완료:");				
			}
		}catch(SQLException e) {
			System.out.println("DB처리 에러:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("기타 에러:"+e.getMessage());
		}
		
		return count;
	} 	
	// 1   try catch, pstmt, rs.next(), rs.getXXX() 처리..
	public double getSalByEmpno(int empno){
		double sal = 0;
		String sql = "SELECT SAL FROM EMP WHERE EMPNO = ?";
		// 입력값 : int empno
		// 결과값 : double sal
		try( Connection con = DB.con();
			PreparedStatement pstmt = con.prepareStatement(sql); ){
			pstmt.setInt(1, empno);  // set정수형(1번째, empno)
			try(ResultSet rs = pstmt.executeQuery()){
				if(rs.next()) {  // 단일행 
					sal = rs.getDouble("SAL"); // get결과유형("컬럼명")
					// 컬럼과 데이터 유형에 따라  rs.get데이터유형("컬럼명");
					// 리턴할 결과값 sal에 할당처리
				}
				System.out.println("데이터 로딩 완료:");				
			}
		}catch(SQLException e) {
			System.out.println("DB처리 에러:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("기타 에러:"+e.getMessage());
		}
		return sal;
	}
	
	// 2
	public int getEmpnoByEname(String ename){
		int empno = 0;
		String sql = "SELECT EMPNO FROM EMP WHERE ENAME = ?";	
		try( Connection con = DB.con();
			PreparedStatement pstmt = con.prepareStatement(sql); ){
			pstmt.setString(1, ename);  // set문자열(1번째, ename)
			try(ResultSet rs = pstmt.executeQuery()){
				if(rs.next()) {  // 단일행 
					empno = rs.getInt("EMPNO"); // get결과유형("컬럼명")
					// 컬럼과 데이터 유형에 따라  rs.get데이터유형("컬럼명");
					// 리턴할 결과값 sal에 할당처리
				}
				System.out.println("데이터 로딩 완료:");				
			}
		}catch(SQLException e) {
			System.out.println("DB처리 에러:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("기타 에러:"+e.getMessage());
		}		
		return empno;
	}
	
	
	// 3
	public String getJobBySal(double sal){
		String job = "";
		String sql = "SELECT JOB FROM EMP WHERE SAL = ?";
		
		try( Connection con = DB.con();
			PreparedStatement pstmt = con.prepareStatement(sql); ){
			pstmt.setDouble(1, sal);  // set문자열(1번째, ename)
			try(ResultSet rs = pstmt.executeQuery()){
				if(rs.next()) {  // 단일행 
					job = rs.getString("JOB"); // get결과유형("컬럼명")
					// 컬럼과 데이터 유형에 따라  rs.get데이터유형("컬럼명");
					// 리턴할 결과값 sal에 할당처리
				}
				System.out.println("데이터 로딩 완료:");				
			}
		}catch(SQLException e) {
			System.out.println("DB처리 에러:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("기타 에러:"+e.getMessage());
		}				
		
		return job;
	}	
	
	public List<String> getEnamesByDeptno( int deptno){
		List<String> enames = new ArrayList<String>();
		String sql = "SELECT ENAME FROM EMP WHERE DEPTNO = ?";

		
		try( Connection con = DB.con();
			PreparedStatement pstmt = con.prepareStatement(sql); ){
			pstmt.setInt(1, deptno);  // set정수형(1번째, 부서번호)
			try(ResultSet rs = pstmt.executeQuery()){
				while(rs.next()) {  // 다중행 
					// list를 담는 메서드 리스트명.add(담을데이터)
					enames.add( rs.getString("ENAME") ); // get결과유형("컬럼명")
					// 컬럼과 데이터 유형에 따라  rs.get데이터유형("컬럼명");
					// 리턴할 결과값 sal에 할당처리
				}
				System.out.println("데이터 로딩 완료:");				
			}
		}catch(SQLException e) {
			System.out.println("DB처리 에러:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("기타 에러:"+e.getMessage());
		}		
		
		return enames;
	}
	// 1
	public List<String> getEnamesByJob(String job){
		List<String> enames = new ArrayList<String>();
		String sql = "SELECT ENAME FROM EMP WHERE JOB = ?";
		
		try( Connection con = DB.con();
			PreparedStatement pstmt = con.prepareStatement(sql); ){
			pstmt.setString(1, job);  // set정수형(1번째, 부서번호)
			try(ResultSet rs = pstmt.executeQuery()){
				while(rs.next()) {  // 다중행 
					enames.add( rs.getString("ENAME") ); // get결과유형("컬럼명")

				}
				System.out.println("데이터 로딩 완료:");				
			}
		}catch(SQLException e) {
			System.out.println("DB처리 에러:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("기타 에러:"+e.getMessage());
		}				
		
		return enames;
	}	
	// 2
	public List<Integer> getEmpnos(int mgr){
		List<Integer> empnos = new ArrayList<Integer>();
		String sql = "SELECT EMPNO FROM EMP WHERE MGR = ?";
		return empnos;
	}	
	// 3
	public List<Double> getSalsByDeptno(int deptno){
		List<Double> sals = new ArrayList<Double>();
		String sql = "SELECT SAL FROM EMP WHERE DEPTNO = ?";
		return sals;
	}	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
