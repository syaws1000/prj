package javaexp.a09_exception;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class A05_Try_with_resources {

	public static void main(String[] args) {
		// 기존의 방식
		BufferedReader br = null;
		try {
			br = new BufferedReader(new FileReader("memo.txt"));
			System.out.println(br.readLine());
		} catch (Exception e) { // 예외 처리 구문
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {  // 예외 발생상관없이 처리할 코드 구문
			try {
				br.close();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
		
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
			} // 블럭이 끝나면 자동으로 br.close()가 처리된다.
		- finally 없이도, 그 안에서 예외 처리 코드 블럭 없이 자동으로 자원해제가 된다.
			
				
				
 * */
