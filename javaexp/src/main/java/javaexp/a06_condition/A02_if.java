package javaexp.a06_condition;

import java.util.Scanner;

public class A02_if {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# if 구문
		1. if 구문은 조건에 따라 코드의 실행 흐름을 제어하는 가장 기본적인 제어문 중 하나이다.
		조건식이 true로 평가되면, if 블럭({}) 안에 코드를 실행하고, 그렇지 않으면 해당 블럭을
		건너띄웁니다. 이를 통해 프로그램이 특정 상황에서만 특정 작업을 수행하도록 설계할 수 있습니다.
		2. 기본 예제
			1) if 구문(1단계)
				if(조건식){
					조건이 true일 때, 실행되는 코드
				}
		 * */
		// 나이가 18세 이상이면 성인 및 입장가능 합니다. 표현 그외는 프로그램 종료 표현
		// 0. 입력 Scanner 선언 및 나이 입력 처리 출력
		Scanner sc = new Scanner(System.in); //해당 라인에서 ctrl+shift+o 자동 import
		System.out.print("나이를 입력하세요:");
		// 1. 나이 설정(나이 할당) : sc.nextInt() : 정수값으로 나이를 입력 받게 처리..
		int age = sc.nextInt();
		System.out.println("나이는 "+age);
		// 2. 조건문 처리 및 조건에 따른 표현
		if( age >= 18) {
			System.out.println("성인 입장가능 합니다.");
		}
		// 3. 프로그램 종료 표현
		System.out.println("프로그램 종료!!");
		
		// ex) A03_if.java를 만들고, 코인의 갯수를 입력받아서 코인의 갯수가 0 이상일 때,
		//     각 코인의 갯수마다 10분씩 이용 가능한 시간을 출력하는 프로그램 처리..
		//    입력 형식
		//    입력할 코인의 갯수:
		//    출력 형식
		//    총 이용 가능한 시간 : @@@ 분
		//    프로그램 종료..
		
		
		
	}

}
