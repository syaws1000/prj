package javaexp.a01_begin;

public class A06_Print {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 자바프로그램의 출력
		1. 자바프로그램은 System.out.println("출력할내용");
			으로 기본적으로 출력을 하고, 줄바꿈도 처리한다.
		2. 문자열 출력이 기본
			System.out.println("출력1");  // 마지막에 줄바꿈 포함
			System.out.println("출력2");
			출력후, 다른 내용을 줄바꿈과 함게 처리된다.
		3. 문자열 줄바꿈 없이 출력
			System.out.print("출력1,");
			System.out.print("출력2,");
			System.out.print("출력3");
			위와 같이 print()메서드를 통해서는 줄을 바꾸지 않고 출력한다.
		 * */
		System.out.println("안녕1");
		System.out.println("안녕2");
		System.out.println("안녕3");
		System.out.print("사과,");
		System.out.print("바나나,");
		System.out.println("딸기");
		/*
		ex) 친구3명의 이름을 줄바꾸기로 출력하고, 좋아하는 음식 3가지를 명령단위는 다르지만 한줄에 출력되게
		   처리하세요..
		 * */
		System.out.println("친구 3명");
		System.out.println("1. 홍길동");
		System.out.println("2. 김길동");
		System.out.println("3. 신길동");
		System.out.println("좋아하는 음식 3가지");
		System.out.print("사과, ");
		System.out.print("바나나, ");
		System.out.println("딸기");
		

	}

}
