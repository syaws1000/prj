package javaexp.a07_loop;

import java.util.Scanner;
public class A11_whileBreak {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in); // 입력하는 객체
		// A11_whileBreak.java
		// 1단계 : 좋아하는 과일명 입력 후, 출력.(종료시 Y)
		while(true) { // 반복을 무한대로..
			System.out.print("좋아하는 과일명 입력 후(종료시 Y):");
			// print() : 해당 라인에서 입력
			// println() : 다음 라인에서 입력
			String fruit = sc.nextLine(); // 문자열을 입력받은 메서드
			if(fruit.equals("Y")) {
				System.out.println("종료합니다.");
				break; // 입력받은 데이터가 Y이면 종료처리
			}
			System.out.println("입력된 과일명:"+fruit);
		}
		// 2단계 : 구매할 과일명/과일갯수/수량 입력 후 출력(총비용 출력, 종료시 Y)
	}

}
