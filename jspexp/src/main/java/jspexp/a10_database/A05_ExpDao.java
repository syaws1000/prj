package jspexp.a10_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jspexp.a10_database.dto.Dept;
import jspexp.a10_database.dto.Student;



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
	public Student getStudent(int no){
		Student st = null;
		String sql = "SELECT * FROM STUDENT WHERE NO = ?";
		try( Connection con = DB.con();
			PreparedStatement pstmt = con.prepareStatement(sql); ){
			pstmt.setInt(1, no);
			try(ResultSet rs = pstmt.executeQuery()){
				if(rs.next()) {  // 단일행 
					st=new Student( rs.getInt("NO"), rs.getString("NAME"),
								rs.getInt("KOR"),rs.getInt("ENG"),rs.getInt("MATH"));
				}
				System.out.println("데이터 로딩 완료:");				
			}
		}catch(SQLException e) {
			System.out.println("DB처리 에러:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("기타 에러:"+e.getMessage());
		}			
		return st;
	}	
	public static void main(String[] args) {
		A05_ExpDao dao = new A05_ExpDao();
		Student st = dao.getStudent(1);
		System.out.println(st.getName());
		System.out.println(st.getKor());
		System.out.println(st.getEng());
		System.out.println(st.getMath());
		
		
		Dept dept = dao.getDeptByDeptno(10);
		System.out.println(dept.getDeptno());
		System.out.println(dept.getDname());
		System.out.println(dept.getLoc());

	}

}
