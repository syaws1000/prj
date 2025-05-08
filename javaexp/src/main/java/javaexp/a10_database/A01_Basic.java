package javaexp.a10_database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class A01_Basic {
	// DB 연결 처리하는 모듈만들기..
	
	// 1. 연결 처리하는 메서드.
	public static Connection con() {
		
		Connection con=null;
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "scott";
		String pwd = "tiger";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url,user,pwd);
			System.out.println("접속성공!!");
		} catch (ClassNotFoundException e) {
			System.out.println("예외1:"+e.getMessage());
		} catch (SQLException e) {
			System.out.println("예외2:"+e.getMessage());
			try {
				con.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
		}
		
		return con;
	}
	public static void main(String[] args) {
		con();
		
		
		try {
			DB.con();
			System.out.println("접속성공2");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
/*
# 데이터베이스 연동 처리
1. 자바에서 데이터베이스 연동은 client입장에서 데이터베이스 서버에 프로그래밍으로 연결하여
 데이터를 가져오는 것/서버의 데이터를 등록/수정/삭제 처리하는 것을 말한다. 
 일반적으로 원하는 형식(문자열/숫자형/객체형/리스트형)으로
 변환하여, 리턴하고 그 리턴된 값을 console창에 출력하거나, 웹 프로그래밍에서는 브라우저
 화면에 뿌려주는 처리를 한다.
2. 데이터베이스 연동 순서(client-자바코드, server-DB서버)
	1) 자바로 데이터베이스를 연동할려면, 
		- jdbc 드라이버를 공통모듈로 설정한다.
			ps) jdbc 드라이버 : 통역사 + 자동차 역할
				jdbc란? java프로그램이 데이터베이스와 대화할 수 있게 해주는 도구입니다.
				자바가 데이터베이스 말을 못 해서, 통역사가 필요해요
				@ 비유로 이해해봅시다.
				자바프로그래머 - 한국 사람
				데이터베이스 - 외국 사람(예:영어 쓰는 oracle sql)
				jdbc 드라이버 - 한/영 통역사
					자바는 sql 쓰고 싶지만, 데이터베이스가 어떤 식으로 처리해달라는지 정확이 몰라요
					그래서 jdbc 드라이버가 중간에서 해석해줘요
					자바가 말한 걸 드라이버가 DB가 이해할 말로 바꾸고, DB의 응답도 자바가 이해하도록 다시 바꿔줘요
				@ 비유로 이해해봅시다2
				jdbc드라이버는 자바에서 sql을 날려서
				이 사람을 태워서 DB까지 데려다주고
				DB에서 응답도 다시 태워서 자바에서 데려다주는 자동차 같아요
				==> jdbc 드라이버는 자바와 데이터베이스 사이에서 말을 잘 통하게 도와주는 통역사입니다.
		- 연결 클래스를 선언을 통해 연결객체(Connection)를 생성한 내용을 가지고,
		- 대화 객체(Statement/PreparedStatement)를 통해 sql 구문을 서버에 전달하고,
		- 그 결과값이 있는 경우(select구문), 결과객체(ResultSet)를 통해서 2차원(테이블형/엑셀시트형식)의 데이터를 가져온다.
		- 가져온 2차원의 데이터를 결과객체(ResultSet)에 할당한 내용을 가지고,
		  필요한 데이터형식(문자열, 숫자, 객체, 객체형배열)로 변환하여 리턴 처리하고,
		  rs.next() 다음 행에 데이터가 있는지 여부를 리턴
		  rs.get데이터유형("컬럼명") 열단위로 해당 데이터유형과 컬럼명에 맞게 가져온다.
		 - 위 내용을 처리하는데 발생하는 예외를 처리하고/자원을 해제한다.
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
		- 연결정보를 자바코드로 처리하여 연결 처리(ip, port, sid, 계정, 비밀번호)
		
 */