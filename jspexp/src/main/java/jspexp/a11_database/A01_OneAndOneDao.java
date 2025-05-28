package jspexp.a11_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jspexp.a10_database.DB;
import jspexp.a10_database.dto.Dept;

public class A01_OneAndOneDao {
	public int getEmpCount(int deptno ){
		int count = 0;
		String sql = "SELECT COUNT(*) COUNT FROM EMP10 WHERE DEPTNO = ?";

		try( Connection con = DB.con();
			 PreparedStatement pstmt = con.prepareStatement(sql);
			){
		
			
			pstmt.setInt(1, deptno);  // 매개변수의 type을 확인해서 변수와 함께 mapping ? 
			try( ResultSet rs = pstmt.executeQuery() ){
				if(rs.next()) { // 단일행.. 
					count = rs.getInt("COUNT");
				}
			}
			
			System.out.println("데이터 로딩 완료:");
		}catch(SQLException e) {
			System.out.println("DB처리 에러:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("기타 에러:"+e.getMessage());
		}		
		return count;
	}
	public double getEmpMaxSal( String job ){
		double mxsal = 0;
		String sql = "SELECT MAX(SAL) MXSAL FROM EMP10 WHERE JOB = ?";
		try( Connection con = DB.con();
			 PreparedStatement pstmt = con.prepareStatement(sql);
			){
			pstmt.setString(1, job);  // 매개변수의 type을 확인해서 변수와 함께 mapping ? 
			try( ResultSet rs = pstmt.executeQuery() ){
				if(rs.next()) { // 단일행.. 
					mxsal = rs.getDouble("MXSAL");
				}
			}		
			System.out.println("데이터 로딩 완료:");
		}catch(SQLException e) {
			System.out.println("DB처리 에러:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("기타 에러:"+e.getMessage());
		}		
		return mxsal;
	}	
	
	public static void main(String []args) {
		A01_OneAndOneDao dao = new A01_OneAndOneDao();
		System.out.println(dao.getEmpCount(10));
		System.out.println(dao.getEmpCount(20));
		System.out.println(dao.getEmpCount(30));
		System.out.println(dao.getEmpMaxSal("SALESMAN"));
		System.out.println(dao.getEmpMaxSal("MANAGER"));
		System.out.println(dao.getEmpMaxSal("CLERK"));
		
	}
}
