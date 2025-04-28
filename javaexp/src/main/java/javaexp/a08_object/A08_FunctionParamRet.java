package javaexp.a08_object;

public class A08_FunctionParamRet {

	// 매개변수와 리턴값을 같이 사용하는 함수 처리
	// 1. 합산처리 함수  두개의 정수값을 전달해서 합산된 값을 리턴하는 함수..
	static int plus(int no1, int no2) {
		System.out.println("# 합산 처리 함수 #");
		System.out.println("매개변수값1:"+no1);
		System.out.println("매개변수값2:"+no2);
		int sum = no1 + no2;
		return sum;
	}
	// ex) discount 입금을 했을 때, 할인율 15%가 적용된 금액을 리턴처리해세요 
	//    리턴값을 double 값으로 처리, 매개변수(정수형)  money - (money * 0.15)  : 할인된 금액 식..
	static double discount(int money) {
		System.out.println("초기 입력받은 금액:"+money);
		double ret = money - (money * 0.15);
		return ret;
	}
	//ex) buy() 메서드로  구매 가격과 구매 갯수를 입력 받아서 총 비용을 리턴하는 함수를 정의하고,
	// 해당 함수를 호출하여 최종금액을 출력하세요..
	static int buy(int price, int cnt) {
		System.out.println("# 구매 정보 #");
		System.out.println("가격:"+price);
		System.out.println("갯수:"+cnt);
		int tot = price*cnt;
		return tot;
	}
	
	
	public static void main(String[] args) {
		double lastMoney = discount(10000);
		System.out.println("최종 금액:"+lastMoney);
		System.out.println("합산된 리턴값:"+plus(5,4));
		int tot = plus(3,4); // int tot = 7;
		System.out.println("변수로 할당한 값:"+tot);

	}

}
