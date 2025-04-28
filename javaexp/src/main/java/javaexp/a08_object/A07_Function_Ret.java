package javaexp.a08_object;

public class A07_Function_Ret {
	
	// 함수를 호출할 때, void 리턴값이 없을 때, 출력만하거나, 저장하거나 할때, 사용
	// 리턴값이 있는 것을 실제 이 함수를 데이터를 전달해준다.
	static void ret1() {
		System.out.println("함수의 리턴값이 없음!!");
	}
	/*
	리턴유형 함수명(){
		return 실제넘기는데이터;
	}
	 */
	static int ret2() {
		System.out.println("정수를 리턴하는 함수!!");
		return 25;
	}
	// 변수로 리턴 처리..(정수형 변수가 리턴 처리)
	static int ret3() {
		System.out.println("변수를 통한 리턴!!!");
		int no = 30;
		return no;
	}
	static String ret4() {
		System.out.println("문자열 리턴하는 함수..");
		String name="홍길동";
		return name;
	}
	static double ret5() {
		// 호출시 마다 변경되는 데이터 리턴
		System.out.println("변경되는 random 값 호출 함수");
		double ran = Math.random();
		return ran;
	}
	static int dice() {
		System.out.println("# 주사위 던지기! #");
		int ran = (int)(Math.random()*6+1);
		return ran;
	}
	//ex) 함수명 dice() 선언하고  int값으로 주사위값 (int)(Math.random()*6+1) 를 
	//  변수로 할당하여 리턴처리하고 해당 데이터 호출하여 출력되게 하세요.
	public static void main(String[] args) {
		System.out.println("주사위1 결과값:"+dice());
		int dice02 = dice();
		System.out.println("주사위2 결과값:"+dice02);
		System.out.println(ret5());
		System.out.println(ret5());
		System.out.println(ret5());
		System.out.println(ret5());
		String str1 = ret4();
		System.out.println("str1:"+str1);
		
		System.out.println("함수를 호출했을 때:"+ret3());
		
		
		ret1();  // 리턴값 없는..
		//System.out.println(ret1()); // 리턴값이 없는 것을 출력하기에 에러발생.
		//int no = ret1(); // 리턴값이 없기에 특정한 변수에 할당도 에러 발생
		System.out.println(ret2()); // 리턴값 25가 있기에 출력.
		int no2 = ret2();  // 리턴값25가 no2에 할당 가능
		System.out.println("번호:"+no2);
		
	}

}
