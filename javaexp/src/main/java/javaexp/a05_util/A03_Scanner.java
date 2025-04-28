package javaexp.a05_util;

// 1. import 처리 : 기본으로 지원하지 않는 객체
import java.util.Scanner;

public class A03_Scanner {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 2. 객체 생성
		Scanner sc = new Scanner(System.in);
		// 3. 입력 안내 출력 : 
		//    println()은 다음 줄에 입력
		//    print()은 해당라인에 입력
		System.out.print("물건명입력:");
		String product = sc.nextLine();
		System.out.println("입력된 물건명:"+product);
		
		
		
	}

}
