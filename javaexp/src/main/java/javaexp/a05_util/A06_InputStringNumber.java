package javaexp.a05_util;

import java.util.Scanner;

public class A06_InputStringNumber {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		/*
		# 문자열과 숫자를 동일시에 입력시는 가능한한 .nextLine()으로
		문자열로 입력된 내용으로 입력을 받고,
		문자열은 그대로 출력하고,
		숫자는 형변환메서드(Integer.parseInt())를 통해 형변환 후,
		처리한다.
		ps) 숫자  25,  숫자형문자열 "25"
			형변환의 대상은 숫자형문자열일 때만 가능하다.
			Integer.parseInt("25") ==> 25
			Double.parseDouble("3.14") ==> 3.14
			
		 * */
		System.out.print("물건명입력:");
		String product = sc.nextLine();
		System.out.print("가격입력:");
		String priceStr = sc.nextLine();
		System.out.print("갯수입력:");
		String cntStr = sc.nextLine();
		System.out.println("# 구매 정보 #");
		System.out.println("물건명:"+product);
		int tot = Integer.parseInt(priceStr) * Integer.parseInt(cntStr);
		System.out.println("총비용:"+tot);
		// ex) 학생의 이름과 국어 영어 수학 점수를 입력받아서, 총점과 평균을 구하세요..
		//     A07_InputString.java
		
		
		
		
		
	}

}
