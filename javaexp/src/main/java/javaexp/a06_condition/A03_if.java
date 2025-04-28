package javaexp.a06_condition;

import java.util.Scanner;

public class A03_if {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// ex) A03_if.java를 만들고, 코인의 갯수를 입력받아서 코인의 갯수가 0 이상일 때,
		//     각 코인의 갯수마다 10분씩 이용 가능한 시간을 출력하는 프로그램 처리..
		//    입력 형식
		//    입력할 코인의 갯수:
		//    출력 형식
		//    총 이용 가능한 시간 : @@@ 분
		//    프로그램 종료..
		//   1. 입력 처리 모듈 호출  
		//      import java.util.Scanner;
		//      Scanner sc = new Scanner(System.in);
		Scanner sc = new Scanner(System.in);
		//   2. 코인의 갯수 변수 설정 int coin;
		int coin;
		//   3. 입력메서드를 통해서 코인의 갯수 할당.
		///     입력 형식 : 입력할 코인의 갯수:
		//      int coin = sc.nextInt();
		System.out.print("입력할 코인의 갯수:");
		coin = sc.nextInt();
		//   4. 코인의 갯수에 따른 이용시간 처리  coin*10  : 1개당 10분씩으므로..
		//      분기조건 if 추가  if(coin>=0){ }
		//      출력 형식 지정 : 코인 갯수 : @@, 총 이용 가능한 시간 : @@@ 분
		System.out.println("코인 갯수 : "+coin+"개");
		if(coin>=0) {
			System.out.println("총 이용 가능한 시간 : "+( coin * 10 )+" 분");
			
		}
		//   5. 프로그램 종료      
		System.out.println("프로그램 종료");
		
	}

}
