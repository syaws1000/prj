package javaexp.a10_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javaexp.a10_database.dto.Emp;


public class A03_ExpDao {	
	// SELECT 템플릿
	public List<Emp> getSelectTmp(Emp sch){
		List<Emp> list  = new ArrayList<Emp>();
		String sql = "SELECT * FROM EMP10";
		try( Connection con = DB.con();
			 PreparedStatement pstmt = con.prepareStatement(sql);			 
				){
				pstmt.setString(1, sch.getEname());
			try(ResultSet rs = pstmt.executeQuery()){
				while(rs.next()) {   
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
	
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
