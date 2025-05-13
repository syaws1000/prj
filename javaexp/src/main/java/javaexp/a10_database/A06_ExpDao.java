package javaexp.a10_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javaexp.a10_database.dto.Dept;
import javaexp.a10_database.dto.Emp;

public class A06_ExpDao {

	public List<Dept> getDeptList(Dept sch){
		List<Dept> dlist = new ArrayList<Dept>();
		String sql = "SELECT DEPTNO, DNAME, LOC FROM DEPT WHERE DNAME LIKE ? AND LOC LIKE ?";

		try( Connection con = DB.con();
			 PreparedStatement pstmt = con.prepareStatement(sql); ){
			pstmt.setString(1, "%"+sch.getDname()+"%");
			pstmt.setString(2, "%"+sch.getLoc()+"%");
			try(ResultSet rs = pstmt.executeQuery()){
				while(rs.next()) {  // 여러행 
					dlist.add(new Dept(rs.getInt("DEPTNO"), rs.getString("DNAME"), 
									    rs.getString("LOC")));
				}
				System.out.println("데이터 로딩 완료:"+dlist.size());				
			}
		}catch(SQLException e) {
			System.out.println("DB처리 에러:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("기타 에러:"+e.getMessage());
		}
		
		
		return dlist;
	}	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
