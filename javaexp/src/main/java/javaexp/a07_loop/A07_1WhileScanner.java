package javaexp.a07_loop;

import java.util.Scanner;

public class A07_1WhileScanner {

	public static void main(String[] args) {
		Scanner sc =new Scanner(System.in);
		
		
		int cnt = 1;
		/*
		while(true) { // 무한 반복..
			System.out.print(cnt+"번째 물건명입력(중단시Q입력):");
			String pname = sc.nextLine();
			
			
			if(pname.equals("Q")) { // 입력에 따라서 중단처리..
				System.out.println("입력중단");
				break;
			}else {
				System.out.println("입력한 물건명:"+pname);
			}
			cnt++;
		}
		*/
		// ex) 메뉴 주문 받습니다(중단시!):
		//     @@번째 주문된 메뉴는 @@ 입니다.
		while(true) {
			System.out.print("메뉴 주문 받습니다(중단시!):");
			String menu = sc.nextLine();
			if(menu.equals("!")) {
				System.out.println("메뉴 입력 완료!");
				break;
			}else {
				System.out.println(cnt+"번째 주문된 메뉴는 "+menu+" 입니다.");
				
			}
			cnt++;
		}
		
	}

}
