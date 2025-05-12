package javaexp.a10_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javaexp.a10_database.dto.Dept;
import javaexp.a10_database.dto.Emp;

public class A05_ExpDao {

	public Dept getDeptByDeptno(int deptno){
		Dept dept = null;
		String sql = "SELECT DEPTNO, DNAME, LOC FROM DEPT WHERE DEPTNO = ?";

		try( Connection con = DB.con();
			PreparedStatement pstmt = con.prepareStatement(sql); ){
			pstmt.setInt(1, deptno);
			try(ResultSet rs = pstmt.executeQuery()){
				if(rs.next()) {  // 단일행 
					dept = new Dept(rs.getInt("DEPTNO"), rs.getString("DNAME"), rs.getString("LOC"));

				}
				System.out.println("데이터 로딩 완료:");				
			}
		}catch(SQLException e) {
			System.out.println("DB처리 에러:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("기타 에러:"+e.getMessage());
		}		
		return dept;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		A05_ExpDao dao = new A05_ExpDao();
		Dept dept = dao.getDeptByDeptno(10);
		System.out.println(dept.getDeptno());
		System.out.println(dept.getDname());
		System.out.println(dept.getLoc());

	}

}
