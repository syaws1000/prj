package javaexp.a07_loop;

import java.util.Scanner;

public class A07_while_Scanner {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in); 
		// 코드후 ctrl+shift+o 를 통해 상단에 import java.util.Scanner; 호출처리
		System.out.println("다음 라인에서 데이터(문자열)입력:");
		String str1 = sc.nextLine(); // enter 입력시까지 문자열 입력받음..
		System.out.println("입력된 문자열:"+str1);
		System.out.print("현재 라인에서 데이터 입력(선택한 번호입력):");
		// 입력받기 전 코드 print() 해당 라인에서 입력 처리..
		int int1 = Integer.parseInt(sc.nextLine());
		// sc.nextLine() :문자열 입력  "25"
		// Integer.parseInt() : 형변환 메서드  "25" ==> 25
		System.out.println("입력한 정수:"+int1);
		System.out.print("현재 라인에서 데이터 입력(몸무게 소숫점 한자리까지 입력):");
		double dbl1 = Double.parseDouble(sc.nextLine());
		System.out.println("입력한 실수:"+dbl1);
		// A08_ScannerWhile.java    물건명: 가격: 갯수: 를 입력(해당라인에서 print())
		// 물건명 : @@@, 총비용 : @@  출력하세요..
		
		
	}

}
