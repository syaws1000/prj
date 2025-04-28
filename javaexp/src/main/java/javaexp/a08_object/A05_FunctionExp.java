package javaexp.a08_object;

import java.util.Scanner;

// {}   ()
public class A05_FunctionExp {

	public static void main(String[] args) {

		
		/*
		# 함수(메서드)이해를 위한 단계별 연습
		1. 함수 정의와 호출
			자바에서는 class 종속하에서 함수를 정의 하면 main()에서 호출할 수 있다.
			main()에서 객체 생성과 참조변수 없이 바로 호출 하기 위해서 static을 사용한다.
		2. 함수의 매개변수 처리
			1) 매개변수 1개
			2) 매개변수 2개
			3) 다양한 유형의 매개변수 처리
		3. 함수의 리턴값 처리
			1) 리턴값이 없을 때
			2) 리턴값이 정수일 때(고정형)
			3) 리턴값이 실수일 때
			4) 리턴값이 문자열일 때
			5) 리턴값이 변경되는 데이터 일 때..
		4. 매개변수와 리턴값 처리 함수..
		5. 매개변수와 프로세스, 리턴값 처리 함수..
		
			
		 * */
		call3();
		call3();// 선언된 함수 호출
		call3();
		call4(); 
		call4(); 
		show();
	}
	// 함수를 선언
	static void call3() {
		System.out.println("선언된 함수 호출..!!");
	}
	
	static void call4() {
		System.out.println("함수선언!!!");
	}
	// ex) show()메서드에 오늘도 좋은날 이라고 출력하고,  위  main()에서 호출을 3번 해보세요..
	static void show() {
		System.out.println("오늘도 좋은날!");
	}
	
}

