package jspexp.a11_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jspexp.a10_database.DB;

public class A02_MultiAndOneDao {

	public List<String> getEnamesByJob( String job ){
		List<String> enames = new ArrayList<String>();
		String sql = "SELECT ENAME FROM EMP10 WHERE JOB = ?";

		

		try( Connection con = DB.con();
			 PreparedStatement pstmt = con.prepareStatement(sql);
			){
			pstmt.setString(1, job);  // 매개변수의 type을 확인해서 변수와 함께 mapping ? 
			try( ResultSet rs = pstmt.executeQuery() ){
				while(rs.next()) { // 다중행.. 
					enames.add(rs.getString("ENAME"));
				}
			}
			System.out.println("데이터 로딩 완료:");
		}catch(SQLException e) {
			System.out.println("DB처리 에러:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("기타 에러:"+e.getMessage());
		}		
		return enames;
	}	
	public List<Double> getSalsByDeptno(int deptno){
		List<Double> sals = new ArrayList<Double>();
		String sql = "SELECT SAL FROM EMP10 WHERE DEPTNO = ?";



		try( Connection con = DB.con();
			 PreparedStatement pstmt = con.prepareStatement(sql);
			){
			pstmt.setInt(1, deptno);  // 매개변수의 type을 확인해서 변수와 함께 mapping ? 
			try( ResultSet rs = pstmt.executeQuery() ){
				while(rs.next()) { // 다중행.. 
					sals.add(rs.getDouble("SAL"));
				}
			}
			System.out.println("데이터 로딩 완료:");
		}catch(SQLException e) {
			System.out.println("DB처리 에러:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("기타 에러:"+e.getMessage());
		}			
		
		return sals;
	}		
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A02_MultiAndOneDao dao = new A02_MultiAndOneDao();
		for(String ename:dao.getEnamesByJob("SALESMAN")) {
			System.out.println(ename);
		}

	}

}
