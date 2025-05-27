package jspexp.a10_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jspexp.a10_database.dto.Dept;
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
	public int updateFamily(Family upt){
		int uptCnt = 0;
		String sql = "UPDATE FAMILY\r\n"
				+ "		SET NAME = ?,\r\n"
				+ "		    PARENT_ID = ?\r\n"
				+ "		WHERE PERSON_ID = ?";
		try( Connection con = DB.con();
				 PreparedStatement pstmt = con.prepareStatement(sql);
				){
				con.setAutoCommit(false); // 자동 commit 방지
				pstmt.setString(1, upt.getName());				
				pstmt.setInt(2, upt.getParentId());  // 매핑되는 데이터 처리..
				pstmt.setInt(3, upt.getPersonId());  // 매핑되는 데이터 처리..
				uptCnt = pstmt.executeUpdate(); 
				if(uptCnt == 0) {
					System.out.println("수정 실패"); // 등록시 실패시 원복
					con.rollback();
				}else {
					System.out.println("수정 성공");  
					con.commit();
				}
				// 등록 수행 후, 등록 건수 리턴..

			}catch(SQLException e) {
				System.out.println("DB처리 에러:"+e.getMessage());

			}catch(Exception e) {
				System.out.println("기타 에러:"+e.getMessage());
			}		
		return uptCnt;
		
	}	
	// a08_deptList.jsp ==> 부서정보를 테이블에 리스트하는 내용을 만들어 주세요..
	public List<Family> getFamlySch(Family sch){
		List<Family> list  = new ArrayList<Family>();
		String sql = "SELECT S.*, P.NAME PNAME \r\n"
				+ "FROM FAMILY S, FAMILY P\r\n"
				+ "WHERE S.PARENT_ID  = P.PERSON_ID\r\n"
				+ "AND S.NAME LIKE ?\r\n"
				+ "AND P.NAME LIKE ? ";
		try( Connection con = DB.con();
			 PreparedStatement pstmt = con.prepareStatement(sql);
			){
			// key word 검색에서 초기에는 데이터를 전체 출력하기 위해서 설정..
			if(sch.getName()==null) sch.setName("");
			if(sch.getPname()==null) sch.setPname("");
			
			pstmt.setString(1, "%"+sch.getName()+"%");
			pstmt.setString(2, "%"+sch.getPname()+"%");
			
			try( ResultSet rs = pstmt.executeQuery() ){
				while(rs.next()) { // 다중행일때, while 사용  
					// Family(int personId, String name, int parentId, String pname)
					list.add(new Family(rs.getInt("PERSON_ID"),rs.getString("NAME"),
										rs.getInt("PARENT_ID"),rs.getString("PNAME")));
				}
			}
			
			System.out.println("데이터 로딩 완료:"+list.size());
		}catch(SQLException e) {
			System.out.println("DB처리 에러:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("기타 에러:"+e.getMessage());
		}
	
		
		
		return list;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("# family 등록 #");
		A04_FamilyDao dao = new A04_FamilyDao();
		System.out.println("수정건수:"+dao.updateFamily(new Family(7,"하길동",1)));
		//int ins = dao.insertFamily(new Family("오길동", 1));
		//System.out.println("등록건수:"+ins);
		for(Family f:dao.getFamlySch(new Family("",""))) {
			System.out.print(f.getPersonId()+"\t");
			System.out.println(f.getName());
		}

	}

}
