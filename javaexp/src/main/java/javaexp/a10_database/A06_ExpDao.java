package javaexp.a10_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javaexp.a10_database.dto.Baby;
import javaexp.a10_database.dto.Bus;
import javaexp.a10_database.dto.Dept;
import javaexp.a10_database.dto.Student01;

public class A06_ExpDao {

	public List<Dept> getDeptList(Dept sch){ // Dept sch = new Dept("홍길동","김길동");
		List<Dept> dlist = new ArrayList<Dept>();
		String sql = "SELECT DEPTNO, DNAME, LOC FROM DEPT WHERE DNAME LIKE ? AND LOC LIKE ?";
		// SELECT DEPTNO, DNAME, LOC FROM DEPT WHERE DNAME LIKE '%A%' AND LOC LIKE '%B%'
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
	public List<Dept> getDeptList(String dname, String loc){ // dao.getDeptList("A","B")
													//   String dname = "A",  String loc = "B"
		List<Dept> dlist = new ArrayList<Dept>();
		String sql = "SELECT DEPTNO, DNAME, LOC FROM DEPT WHERE DNAME LIKE ? AND LOC LIKE ?";
		// SELECT DEPTNO, DNAME, LOC FROM DEPT WHERE DNAME LIKE '%A%' AND LOC LIKE '%B%'
		try( Connection con = DB.con();
			 PreparedStatement pstmt = con.prepareStatement(sql); ){
			pstmt.setString(1, "%"+dname+"%");
			pstmt.setString(2, "%"+loc+"%");
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
	public  static void setDept(Dept sch) { /// Dept sch  = new Dept(10,"인사","서울")
		System.out.println("# 객체를 매개변수로 전달 #");
		System.out.println(sch.getDeptno());
		System.out.println(sch.getDname());
		System.out.println(sch.getLoc());
		
	}
	public static void takeBus(Bus bus      /*버스 객체 선언*/) {   // 매개변수 class Bus로  버스번호, 행선지(속성) dto
		System.out.println("# 버스를 탔습니다. #");
		// 버스 번호와 행선지를 출력..
		System.out.println("버스번호:"+bus.getNo());
		System.out.println("버스행선지:"+bus.getDestin());
		
		
	}

	public static void main(String[] args) {
		takeBus(new Bus("M001","서울~수원")   /*버스 객체 생성*/);
		takeBus(new Bus("7791","대전~인천")   /*버스 객체 생성*/);
		
		setDept(new Dept(10,"인사","서울"));
		setDept(new Dept(20,"회계","부산"));
		/*
		다중의 행을 처리할 때, 사용하는 List<데이터유형> list = new ArrayList<데이터유형>();
		 * */
		
		
		
		
		
		Student01 st01 = new Student01("오길동",70,90); // 객체 생성
		st01.setName("마길동"); // 데이터변경
		System.out.println(st01.getName()); // 호출
		System.out.println(st01.getKor());
		System.out.println(st01.getMath());
//     	javaexp.a10_database.dto  class Baby		
//		이름, 나이 속성 설정..
//		==> 생성자를 통해 초기데이터 할당.	get/set 활용
		Baby b1 = new Baby("귀염둥이1", 2);
		b1.setName("이쁜둥이2");
		System.out.println(b1.getName());
		System.out.println(b1.getAge());
		
		
		// TODO Auto-generated method stub
		A06_ExpDao dao = new A06_ExpDao();
		List<Dept> dlist = dao.getDeptList(new Dept("A","A")); // 검색할 내용인 DNAME, LOC
		List<Dept> dlist2 = dao.getDeptList("A","A"); // 검색할 내용인 DNAME, LOC
		for(Dept dept:dlist) {
			System.out.print(dept.getDeptno()+"\t");
			System.out.print(dept.getDname()+"\t");
			System.out.print(dept.getLoc()+"\n");
		}
		
	}

}
