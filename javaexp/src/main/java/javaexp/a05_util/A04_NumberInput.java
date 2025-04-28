package javaexp.a05_util;

import java.util.Scanner;


public class A04_NumberInput {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		객체 
			변수1, 변수2,..
			기능함수1, 기능2..
		 * 
		 * */
		Scanner sc = new Scanner(System.in);
		System.out.print("물건의 갯수 입력:");
		int cnt = sc.nextInt();
		System.out.print("물건의 가격 입력:");
		int price = sc.nextInt();
		//sc.nextDouble() : 실수값 입력시..
		// sc.nextInt() : 입력한 데이터를 정수로 처리
		System.out.println("입력된 물건의 갯수:"+cnt);
		System.out.println("입력된 물건의 가격:"+price);
		int totPay = price*cnt;
		System.out.println("총 비용:"+totPay);
		// A05_NumberInput.java
		// ex) 구매한 바나나의 갯수 입력, 구매한 오렌지의 갯수 입력   구매한 총 과일의 갯수 @@@
	}

}
