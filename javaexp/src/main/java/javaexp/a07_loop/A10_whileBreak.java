package javaexp.a07_loop;

import java.util.Scanner;

public class A10_whileBreak {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		while(true) { // 무한 반복
			System.out.print("회원명입력(종료시Y):");
			String memName = sc.nextLine();
			if(memName.equals("Y")) {
				System.out.println("입력종료");
				break;// Y를 입력시, 반복문 중단 처리
			}
			System.out.println("입력된 회원명:"+memName);
		}
		// A11_whileBreak.java
		// 1단계 : 좋아하는 과일명 입력 후, 출력.(종료시 Y)
		// 2단계 : 구매할 과일명/과일갯수/수량 입력 후 출력(총비용 출력, 종료시 Y)
	}

}
