package javaexp.a08_object;

public class A11_FunctionReturn {
	// 리턴값 연습 함수들..
	// void는 리턴값이 없을 때, 사용한다.
	static void call1() {
		System.out.println("리턴값 없는 함수 ^^");
	}
	static int call2() {
		System.out.println("리턴값이 정수인 함수");
		return 35;
	}
	// ex) call3()으로 정수값으로 50리턴함수를 선언하고, 아래서 호출하세요..
	static int call3() {
		System.out.println("리턴값인 정수인 함수");
		return 50;
	}
	static String autoSeller() {
		return "크림빵";
	}
	static String autoSeller(String food) {
		return "맛있는 "+food;
	}
	static String autoSeller(int money, int chBtn) {
		String retBev = "";
		if(chBtn==1) {
			retBev = "콜라";
		}
		if(chBtn==2) {
			retBev = "사이다";
		}
		if(money<1000) {
			System.out.println("잔액이 부족합니다.");
			retBev = "";
		}
		return retBev;
	}	
	

	public static void main(String[] args) {
		System.out.println( autoSeller(1200,1) );
		System.out.println(autoSeller("바나나"));
		String chFruit = autoSeller("오렌지");
		System.out.println(chFruit);
		call1();
		System.out.println("리턴값 바로 출력:"+call2());
		int ret = call2();
		System.out.println("변수에 할당 후 출력:"+ret);
		int sum = call3() + 50;
		System.out.println("합산값:"+sum);
	
	}

}
