package javaexp.a09_exception;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.DriverManager;
import java.sql.SQLException;

public class A03_CheckedException {

	public static void main(String[] args) {
		// 컴파일시에 예외가 반드시 해야할 클래스로 사전에 예외 처리를 해야 한다.
		// 1. FileNotFoundException  존재하지 않는 파일 열기
		
		try {
			System.out.println("#파일 읽기 프로그램#");
			new FileInputStream("a.txt");
			
		} catch (FileNotFoundException e) {
			// 예외 처리
			System.out.println(e.getMessage());
			// 경로 수행
			//e.printStackTrace();
			
		}
		System.out.println("# 파일 읽기 처리 프로그램 종료 #");
		
		//ex) import 후에 checked exception 처리 잘못된 jdbc url 연결시
		
		System.out.println("# jdbc 연결 프로그램 #");
		
		try {
			DriverManager.getConnection("jdbc:wrong:url");
		} catch (SQLException e) {
			System.out.println("# DB 연결 예외 처리 #");
			System.out.println(e.getMessage());
		}
		
		
		System.out.println("# jdbc 연결 프로그램 종료#");
		
	}

}
