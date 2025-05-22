package jspexp.a10_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jspexp.a10_database.dto.Dept;
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
		int insCnt = 0;
		String sql = "INSERT INTO DEPT01 VALUES(?,?,?)";
		try( Connection con = DB.con();
			 PreparedStatement pstmt = con.prepareStatement(sql);
			){
			con.setAutoCommit(false); // 자동 commit 방지
			pstmt.setInt(1, ins.getDeptno());
			pstmt.setString(2, ins.getDname());
			pstmt.setString(3, ins.getLoc());
			insCnt = pstmt.executeUpdate(); 
			if(insCnt == 0) {
				System.out.println("등록 실패");
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
		A03_DeptDao dao = new A03_DeptDao();
		dao.insertDept(new Dept(81,"총무","인천"));
		// TODO Auto-generated method stub
		for(Dept d:dao.getDeptSch(new Dept("",""))) {
			System.out.print(d.getDeptno()+"\t");
			System.out.print(d.getDname()+"\t");
			System.out.print(d.getLoc()+"\n");
		}	
	}

}
