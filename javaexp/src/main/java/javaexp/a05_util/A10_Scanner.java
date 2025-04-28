package javaexp.a05_util;

import java.util.Scanner;

public class A10_Scanner {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# Scanner를 통한 입력처리 순서
		1. Scanner 객체 생성 코드 선언
			Scanner sc = new Scanner(System.in);
		2. import 처리 (ctrl+shift+o)
			패키지명 밑에 선언
		3. 입력을 위한 설명 출력..
			System.out.println("이름을 입력하세요(줄바꿈후)");
			System.out.print("좋아하는 과일입력:");
		4. 입력 명령 메서드 선언..
			1) 기본 문자열 데이터 입력
				String inputData = sc.nextLine();
			2) 정수형 데이터 입력( 숫자형 문자열("25") ==> 숫자(25) )
				int inputInt = Integer.parseInt(inputData);
			3) 실수형 데이터 입력( 문자열("3.14") ==> 실수(3.14) )
				double inputDbl = Double.parseDouble(inputDate);
		5. 입력된 내용 출력.
			System.out.println("입력:"+inputData);
		 * */
		Scanner sc = new Scanner(System.in);
		System.out.print("좋아하는 과일입력:");
		String fruit = sc.nextLine();
		System.out.println("입력된 과일:"+fruit);
		// ex) A11_ScannerStr.java
		//     문자열 데이터  좋아하는 음식을 입력받아서 출력되게 하세요..
		// upex)   3가지 입력 내용 출력..
		
	}

}
