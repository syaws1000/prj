package javaexp.a09_exception;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class A05_Try_with_resources {

	public static void main(String[] args) {
		// 기존의 방식
		BufferedReader br = null;
		try {
			br = new BufferedReader(new FileReader("memo.txt"));
			System.out.println(br.readLine());
		} catch (Exception e) { // 예외 처리 구문
			// TODO Auto-generated catch block
			System.out.println("예외 처리1");
		}finally {  // 예외 발생상관없이 처리할 코드 구문
			try {
				
				br.close();
			} catch (Exception e) {
				
				System.out.println("결과"+e.getMessage());
			}
		}
		System.out.println("# try with resources 구문 예외 #");
		try( BufferedReader br1 = new BufferedReader(
				new FileReader("C:\\Users\\USER\\git\\prj\\javaexp\\src\\main\\java\\javaexp\\a09_exception\\memo.txt") ) ){
			System.out.println(br1.readLine());
		}catch(IOException e) {
			System.out.println("# 예외 발생 #");
			System.out.println(e.getMessage());
		}		
		System.out.println("# 처리 종료 #");
		
		
		
	}

}
/*
# try_with_resources 구문 처리..
1. 문을 열면 꼭 닫아야 하듯이, 파일-DB-네트워크 문도 열면 닫아야 합니다.
	기존에 위와 같은 프로그램에서 반드시 자원해제를 해주는 구문으로 보다 간편하게 처리해주는 것이
	try(...){...} 코드로 이름 하여 "자동 문닫기 장치" 코드 형식을 말합니다.
2. 단계별 이해를 위한 내용
	1) 문을 꼭 닫아야 해!! (개념)
		- 리소스(파일,DB,네트워크연결)이 문이라면, close()라는 메서드는 문닫기로 비유할 
			수 있습니다.
		- 파일/DB/네트워크 ==> 문
			close() ==> 문 닫기
			문을 안 닫으면 다른 사람이 못 들어오고, 안쪽 공기도 나빠져요!!(비유)
			==> 자원을 해제하지 않으면 다른 프로그램을 돌리는데 한계가 발생하고, 문제가
				발생합니다.
	2) 예전에는 이렇게 문을 닫았습니다(try-finally)
		- 전통 방식
			파일 읽기 처리 예제 코드..
			BufferedReader br = new BufferedReader(new FileReader("memo.txt"));
			try{
				System.out.println(br.readLine());  // 해당 파일에서 읽어온 문자열.. 출력
			}finally{
				br.close();  // 문을 직접닫는 코드 즉 자원을 해제 시키는 코드
			}
		- 문제 점 : 코드 길고, 실수로 close() 빼먹기 쉬움
	3) 자동 문닫기 장치 달기 : try-with-resources 사용
		- 위 전통 방식에서 보다 간단하게 자동으로 자원해제 해주는 코드를 작성할 수 있다.
			try( BufferedReader br = new BufferedReader(new FileReader("memo.txt")) ){
				System.out.println(br.readLine());
			}catch(Exception e){} // 블럭이 끝나면 자동으로 br.close()가 처리된다.
		- finally 없이도, 그 안에서 예외 처리 코드 블럭 없이 자동으로 자원해제가 된다.
	4) 두개 이상도 순서대로 닫힙니다!!(다중 리소스)
		- 괄로 안에 세미콜론(;)으로 여러개 선언 가능, 역순으로 닫힘
			일반적으로 자원들은 계층 관계로 설정이 된 경우도 많다. 즉, 상위 계증에 메모리가 열려야 하위 계층의
			메모리를 사용하여 처리하는 등이 필요한 경우를 말한다. 이 때는 여러 개의 상/하위 관계에 있는 자원도
			열린 순서대로 닫아 줘야 하는 경우를 말한다.
			try(
				FileInputStream in = new FileInputStream("a.dat");
				FileOutputStream out = new FileOutputStream("b.dat");
				){
				out.write(in.read); // 특정 파일에서 읽어온 데이터를 특정 파일에 쓰는 경우 a.dat ==> b.dat
				// out, in 순서대로 자원을 close() 메서드가 자동으로 처리가 된다.
			}catch(Exception e){
				System.out.println(e.getMessage());
			} 
				
				
 * */
