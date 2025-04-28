package javaexp.a06_condition;

public class A05_if_else_if {

	public static void main(String[] args) {
		/*
		# if else if
		1. if else if문은 여러 조건을 순차적으로 검사할 때 사용된다.
		2. 기본형식
			if( 조건1 ){
				조건1이 참일 때, 처리할 구문
			}else if( 조건2 ){
				조건2가 참일 때, 처리할 구문
			}else{
				위 조건1과 조건2가 아닐 때, 처리하는 구문
			}
		3. 조건 처리
			if 조건1 : 가장 첫 조건이 참인지 확인
			else if 조건 : 첫 조건이 거짓일 경우, 순서대로 다음 조건들을 확인 - 반복해서 처리가능
			else 문 : 위에 나열된 조건이 모두 거짓일 경우 실행.
		*/
		int score = 65;
		if(score>=90) {
			System.out.println("A학점입니다.");
		}else if(score>=80) {  // else안에 포함( score < 90 && ) score>=80
			System.out.println("B학점입니다.");
		}else if(score>=70) {
			System.out.println("C학점입니다.");
		}else if(score>=60) {
			System.out.println("D학점입니다.");
		}else {
			System.out.println("F학점입니다. 재수강!! Fire!");
		}
		/*
		ex) 로봇의 배터리 잔량을 임의로 할당(0~100)로 설정, 상태를 아래에 따라 분기로 처리
		80이상이면 "로봇이 힘이 넘칩니다!"
		50이상 80미만 이면 "로봇이 괜챦습니다!"
		20이상 50미만 이면 "로봇이 조금 지쳤습니다!"
		20미만이면 "로봇이 충전이 필요합니다!"
		 * */
		// 1. 변수 지정 battery 및 임의 할당 (int)(Math.random()*101)
		//    현재 battery 잔량 표현(출력) 현재 배터리는 @@@
		int battery = (int)(Math.random()*101);
		System.out.println("현재 배터리는 잔량:"+battery);
		// 2. 분기 조건 if else if 구문 처리
		//    조건문 안에 각각 해당 내용에 따른 출력..
		//    if(battery>=80)
		//       System.out.println("로봇이 힘이 넘칩니다!");
		//    else if(battery>=50)
		//    else if(battery>=20)
		//    else
		if(battery>=80) {
			System.out.println("로봇이 힘이 넘칩니다!");
		}else if(battery>=50) {
			System.out.println("로봇이 괜챦습니다!");
		}else if(battery>=20) {
			System.out.println("로봇이 조금 지쳤습니다!");
		}else {
			System.out.println("로봇이 충전이 필요합니다!");
		}
		
		// 숫자를 처리할 양수, 음수, 0 인지를 구분하여 출력..
		int number = 0; // 10, -10, 0
		if(number>0) {
			System.out.println("양수");
		}else if(number <0) {
			System.out.println("음수");
		}else {
			System.out.println("0입니다.");
		}
		
		
		
	}

}
