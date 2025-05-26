package jspexp.a10_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jspexp.a10_database.dto.Family;

public class A04_FamilyDao {

	public int insertFamily(Family ins){
		int insCnt = 0;
		String sql = "INSERT INTO FAMILY VALUES(FAMILY_SEQ.NEXTVAL, ?,?)";
		try( Connection con = DB.con();
				 PreparedStatement pstmt = con.prepareStatement(sql);
				){
				con.setAutoCommit(false); // 자동 commit 방지
				pstmt.setString(1, ins.getName());				
				pstmt.setInt(2, ins.getParentId());  // 매핑되는 데이터 처리..
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
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("# family 등록 #");
		A04_FamilyDao dao = new A04_FamilyDao();
		int ins = dao.insertFamily(new Family("오길동", 1));
		System.out.println("등록건수:"+ins);

	}

}
