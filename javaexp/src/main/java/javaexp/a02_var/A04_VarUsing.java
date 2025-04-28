package javaexp.a02_var;

public class A04_VarUsing {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// # 변수의 사용.
		// 1. 출력처리..
		int kor = 80;
		System.out.println("국어 점수:"+kor);
		// 2. 다른 변수에 재 할당 : ctrl + alt + 화살표 아래 (줄복사)
		int kor2 = kor;
		int kor3 = kor;
		int kor4 = kor;
		int kor5 = kor;
		// kor 변수를 kor2에 할당하여 처리
		System.out.println("두번째 국어 점수:"+kor2);
		System.out.println("세번째 국어 점수:"+kor3);
		System.out.println("네번째 국어 점수:"+kor4);
		System.out.println("다섯번째 국어 점수:"+kor5);
		
		// ex) eng라는 변수로 점수 90를 할당하고,
		//     eng2, eng3, eng4, eng5에 재할당후, 출력하세요..
		int eng = 90;
		System.out.println("영어 점수:"+eng);
		int eng2 = eng;
		int eng3 = eng;
		int eng4 = eng;
		int eng5 = eng;
		System.out.println("두번째 영어 점수:"+eng2);
		System.out.println("세번째 영어 점수:"+eng3);
		System.out.println("네번째 영어 점수:"+eng4);
		System.out.println("다섯번째 영어 점수:"+eng5);
		
		// ctrl + f11 : 실행단축키
		// 3. 다른 변수에 연산에 할당
		int price = 3000;  // 가격변수할당
		int cnt = 5;		// 갯수변수 할당.
		int totPay = price*cnt;  // 위 두개의 변수를 연산하여 총비용을 출력..
		System.out.println("총비용:"+totPay);
		// 국어 영어 수학 점수의 합산.
		int korPt = 70;
		int engPt = 80;
		int mathPt = 90;
		int scoreTot = korPt + engPt + mathPt;
		System.out.println("총 점수의 합산:"+scoreTot);
		
		int myMoney = 50000;
		int withdrawPay = 3000;
		int myRestMoney = myMoney-withdrawPay;
		System.out.println("현재 잔액:"+myRestMoney);
		
		// ex1) 오늘의 지출금액을 총비용을 처리해봅시다.
		//      지출금액(pay1, pay2, pay3)를 각각 할당하여 총 비용(payAll)을 변수를 선언하여, 출력하세요.
		int pay1 = 3000;
		int pay2 = 4000;
		int pay3 = 5000;
		int payAll = pay1 + pay2 + pay3;
		System.out.println("총지출비용:"+payAll);
		
		
		// ex2) 정사각형의 면적을 밑변(base)과 높이(height)를 설정하여 area10(면적)을 구하여 출력하세요..
		int base = 100;
		int height = 300;
		int area10 = base * height;
		System.out.println("정사각형의 면적:"+area10);
		// ex3) 친구들과 저녁식사를 하여 100000이 나왔을 때, 4명이 동일하게 더치패이 할때 금액을 출력하세요.
		int totAllPay = 100000;
		int friendCnt = 4;
		int equPay = totAllPay/friendCnt;
		System.out.println("각 더치패이 금액:"+equPay);
		
		
		
		
		
		
		
		

	}

}
