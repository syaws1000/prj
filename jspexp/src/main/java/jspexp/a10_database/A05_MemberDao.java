package jspexp.a10_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jspexp.a10_database.dto.Dept;
import jspexp.a10_database.dto.Member;
// jspexp.a10_database.A05_MemberDao
// jspexp.a10_database.dto.Member
public class A05_MemberDao {
	
	public Member login(Member mem){
		Member dto = null;
		String sql = "SELECT * FROM MEMBER WHERE ID = ? AND PWD = ?";

		try( Connection con = DB.con();
			 PreparedStatement pstmt = con.prepareStatement(sql);
			){
			pstmt.setString(1, mem.getId());
			pstmt.setString(2, mem.getPwd());
			try( ResultSet rs = pstmt.executeQuery() ){
				// Member(String id, String pwd, String name, String auth, int point)
				if(rs.next()) { // 다중행일때, while 사용  
					dto = new Member(rs.getString("ID"), rs.getString("PWD"),
									rs.getString("NAME"),rs.getString("AUTH"),
									rs.getInt("POINT") );
				}
			}
			System.out.println("데이터 상세 완료:");
		}catch(SQLException e) {
			System.out.println("DB처리 에러:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("기타 에러:"+e.getMessage());
		}		
		return dto;
	}	

	public int ckMember(String id){
		int cnt = 0;
		String sql = "SELECT COUNT(*) FROM MEMBER WHERE ID = ? ";
	
		try( Connection con = DB.con();
			 PreparedStatement pstmt = con.prepareStatement(sql);
			){
			pstmt.setString(1, id);
			try( ResultSet rs = pstmt.executeQuery() ){
				if(rs.next()) {   
					cnt = rs.getInt(1);
				}
			}
			System.out.println("데이터 상세 완료:");
		}catch(SQLException e) {
			System.out.println("DB처리 에러:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("기타 에러:"+e.getMessage());
		}		
		return cnt;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
