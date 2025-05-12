package javaexp.a10_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javaexp.a10_database.dto.Emp;

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
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
