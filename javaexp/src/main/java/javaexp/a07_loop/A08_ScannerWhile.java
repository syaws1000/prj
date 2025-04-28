package javaexp.a07_loop;

import java.util.Scanner;

public class A08_ScannerWhile {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 1. Scanner
		Scanner sc = new Scanner(System.in);
		// 2. 물건명 입력(타이틀/입력메서드), 입력된  내용 출력
		System.out.print("물건명 입력:");
		String pname = sc.nextLine();
		System.out.println("입력된 물건명:"+pname);
		// 3. 가격 입력(형변환), 입력된  내용 출력
		System.out.print("가격 입력:");
		int price = Integer.parseInt(sc.nextLine());
		System.out.println("입력된 가격:"+price);
		// 4. 갯수 입력(형변환), 입력된  내용 출력
		System.out.print("갯수 입력:");
		int cnt = Integer.parseInt(sc.nextLine());
		System.out.println("입력된 갯수:"+cnt);		
		// 5. 총계 : 가격*갯수
		int tot = price*cnt;
		System.out.println("# 구매한 물건 정보 #");
		System.out.println("물건명:"+pname);
		System.out.println("총비용:"+tot);
		
		
	}

}
