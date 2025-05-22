package jspexp.a10_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jspexp.a10_database.dto.Dept;

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
		String sql = "SELECT * FROM DEPT01 WHERE DNAME LIKE ? AND LOC LIKE ?";
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

	public static void main(String[] args) {
		A03_DeptDao dao = new A03_DeptDao();
		// TODO Auto-generated method stub
		for(Dept d:dao.getDeptSch(new Dept("A",""))) {
			System.out.print(d.getDeptno()+"\t");
			System.out.print(d.getDname()+"\t");
			System.out.print(d.getLoc()+"\n");
		}	
	}

}
