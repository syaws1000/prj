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
		String sql = "SELECT * FROM EMP10 WHERE ENAME LIKE ?";
		try( Connection con = DB.con();
			 PreparedStatement pstmt = con.prepareStatement(sql); ){
			pstmt.setString(1, "%"+sch.getEname()+"%");
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
	
	public String getEnameByEmpno(int empno) {
		String ename = null;
		String sql ="SELECT ENAME FROM EMP WHERE EMPNO=? ";
		try( Connection con = DB.con();
			 PreparedStatement pstmt = con.prepareStatement(sql);			 
					){
					pstmt.setInt(1, empno); // ?에 있는 1번째 데이터 할당 처리..
				try(ResultSet rs = pstmt.executeQuery()){
					if(rs.next()) {    // 한개 행 리턴
						ename = rs.getString("ENAME");
					}
					System.out.println("데이터 로딩 완료:");				
				}
			}catch(SQLException e) {
				System.out.println("DB처리 에러:"+e.getMessage());
			}catch(Exception e) {
				System.out.println("기타 에러:"+e.getMessage());
			}		
		
		return ename;
	}
	public String getJobByEname(String ename) {
		String job=null;
		String sql = "SELECT JOB FROM EMP10 WHERE ENAME=?";
		
		
		return job;
	}
	// ex) 사원번호(EMPNO)이  사원의 급여(SAL)를 구하는 SQL과 메서드를 선언해보세요..
	
	
	
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 7654 입력했을 때, 나올 사원명 확인
		A03_ExpDao dao = new A03_ExpDao();
		System.out.println(dao.getEnameByEmpno(7654));
	}

}
