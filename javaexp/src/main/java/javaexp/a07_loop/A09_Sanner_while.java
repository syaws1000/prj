package javaexp.a07_loop;

import java.util.Scanner;

public class A09_Sanner_while {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// Scanner 를 통해서 반복문을 통한 입력 처리..
		// 물건정보 3개를 입력 받아서 출력..
		// 1. Scanner객체 생성..
		Scanner sc = new Scanner(System.in);
		String inputProd = "";
		// 2. while() 문 수행..
		while(!inputProd.equals("Y")) { // 종료조건이 아닐 때,..
			System.out.print("물건명을 입력하세요 (종료시Y):");
			inputProd = sc.nextLine(); //물건 입력 처리.. 
			if(!inputProd.equals("Y")) {
				System.out.println("입력한 물건명:"+inputProd);
			}
		}
		System.out.println("물건입력 처리 종료!!");		// 3. 입력 내용 처리 종료시는 Y 그외는 물건명 입력
		//    1) 등록할 물건명입력(종료시Y)
		//    2) 물건명 출력
		
	}

}
