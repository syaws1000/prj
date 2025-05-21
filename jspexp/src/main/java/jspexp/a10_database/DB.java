package jspexp.a10_database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
// DB.con();
public class DB {
	// DB 연결 처리하는 모듈만들기..
	public static Connection con() throws ClassNotFoundException, SQLException {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "scott";
		String pwd = "tiger";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		return DriverManager.getConnection(url,user,pwd);
	}
}
