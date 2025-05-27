package jspexp.a10_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jspexp.a10_database.dto.Dept;
import jspexp.a10_database.dto.Emp;
/*
*/ 
public class A03_DeptDao {

	
	
	// a08_deptList.jsp ==> 부서정보를 테이블에 리스트하는 내용을 만들어 주세요..
	public List<Dept> getDeptAll(){
		List<Dept> list  = new ArrayList<Dept>();
		String sql = "SELECT * FROM DEPT01";
		try( Connection con = DB.con();
			 PreparedStatement pstmt = con.prepareStatement(sql);
			 ResultSet rs = pstmt.executeQuery()
				){
			
			while(rs.next()) { // 다중행일때, while 사용  
				list.add(new Dept(rs.getInt("DEPTNO"),
							rs.getString("DNAME"),rs.getString("LOC")));
			}
			
			System.out.println("데이터 로딩 완료:"+list.size());
		}catch(SQLException e) {
			System.out.println("DB처리 에러:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("기타 에러:"+e.getMessage());
		}
	
		
		
		return list;
	}

	// a08_deptList.jsp ==> 부서정보를 테이블에 리스트하는 내용을 만들어 주세요..
	public List<Dept> getDeptSch(Dept sch){
		List<Dept> list  = new ArrayList<Dept>();
		String sql = "SELECT * FROM DEPT01 "
				+ "WHERE DNAME LIKE ? AND LOC LIKE ? "
				+ "ORDER BY DEPTNO ";
		try( Connection con = DB.con();
			 PreparedStatement pstmt = con.prepareStatement(sql);
			){
			// key word 검색에서 초기에는 데이터를 전체 출력하기 위해서 설정..
			if(sch.getDname()==null) sch.setDname("");
			if(sch.getLoc()==null) sch.setLoc("");
			
			pstmt.setString(1, "%"+sch.getDname()+"%");
			pstmt.setString(2, "%"+sch.getLoc()+"%");
			
			try( ResultSet rs = pstmt.executeQuery() ){
			
			
				while(rs.next()) { // 다중행일때, while 사용  
					list.add(new Dept(rs.getInt("DEPTNO"),
								rs.getString("DNAME"),rs.getString("LOC")));
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

	// a08_deptList.jsp ==> 부서정보를 테이블에 리스트하는 내용을 만들어 주세요..
	public int insertDept(Dept ins){
		int insCnt = 0; // 입력값 형식으로 VO/DTO, 리턴으로 등록된 데이터의 갯수..int 리턴..
		String sql = "INSERT INTO DEPT01 VALUES(?,?,?)";

		try( Connection con = DB.con();
			 PreparedStatement pstmt = con.prepareStatement(sql);
			){
			con.setAutoCommit(false); // 자동 commit 방지
			pstmt.setInt(1, ins.getDeptno());  // 매핑되는 데이터 처리..
			pstmt.setString(2, ins.getDname());
			pstmt.setString(3, ins.getLoc());
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
	public int updateDept01(Dept upt){
		int uptCnt = 0;
		String sql = "UPDATE DEPT01\r\n"
				+ "	 		SET DNAME = ?,\r\n"
				+ "	    		LOC = ?\r\n"
				+ "	  		WHERE DEPTNO = ? ";
		
		try( Connection con = DB.con();
				 PreparedStatement pstmt = con.prepareStatement(sql);
				){
				con.setAutoCommit(false); // 자동 commit 방지
				pstmt.setString(1, upt.getDname());
				pstmt.setString(2, upt.getLoc());
				pstmt.setInt(3, upt.getDeptno());
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
	public int deleteDept01(int deptno){
		int delCnt = 0;
		String sql = "DELETE FROM DEPT01 WHERE DEPTNO = ?";
		try( Connection con = DB.con();
				 PreparedStatement pstmt = con.prepareStatement(sql);
				){
				con.setAutoCommit(false); // 자동 commit 방지
				pstmt.setInt(1, deptno);
				delCnt = pstmt.executeUpdate(); 
				if(delCnt == 0) {
					System.out.println("삭제 실패"); // 등록시 실패시 원복
					con.rollback();
				}else {
					System.out.println("삭제 성공");  
					con.commit();
				}

			}catch(SQLException e) {
				System.out.println("DB처리 에러:"+e.getMessage());

			}catch(Exception e) {
				System.out.println("기타 에러:"+e.getMessage());
			}			
		return delCnt;
	}	
	public static void main(String[] args) {
		A03_DeptDao dao = new A03_DeptDao();
		System.out.println("삭제 건수:"+dao.deleteDept01(82));
		//System.out.println("수정 건수:"+ dao.updateDept01(new Dept(30,"회계","서울")));
		
		
		// Emp(String ename, String job, int mgr, String hiredateStr, 
		// double sal, double comm, int deptno)

		
		
		
		
		/*
		dao.insertDept(new Dept(81,"총무","인천"));
		for(Dept d:dao.getDeptSch(new Dept("",""))) {
			System.out.print(d.getDeptno()+"\t");
			System.out.print(d.getDname()+"\t");
			System.out.print(d.getLoc()+"\n");
		}
		*/	
	}

}
