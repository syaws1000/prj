package javaexp.a08_object.a02_object;

public class A01_Function {
	// static : 객체 생성없이 같은 클래스에서 바로 호출가능..
	// 1. 리턴값1 : void 는 마지막에 return할 데이터가 없을 것을 맗한다.
	static void call(int price, int cnt) {
		System.out.println("가격:"+price+", 갯수:"+cnt);
		System.out.println("총합:"+(price*cnt));
	}
	// ex) 리턴값이 없는 연습 예제  이름(name)과 나이(age)와 사는 곳(loc) 입력받아서, 출력하는 return값 없는
	//    메서드를 정의 하고 호출 하세요..
	// 2. 리턴값2 : 선언한 유형에 맞는 데이터 호출하는 곳에 데이터를 리턴해준다.
	static int call() {
		return 5;
	}
	// 2. 리턴값3 : 매개변수를 받아서 연산을 처리한 후에 리턴값 처리 : 함수에 데이터 전달하고, 함수로 데이터 받는.
	static int plus(int no1, int no2) {
		System.out.println("입력된 no1:"+no1);
		System.out.println("입력된 no2:"+no2);
		int sum = no1 + no2;
		return sum;
	}
	// ex) pay()함수에 매개변수로  사과의 갯수, 바나나의 갯수, 딸기의 갯수를 전달해서, 각각의 수를 출력하고,
	//     최종적으로는 합산된 과일의 갯수를 리턴하는 함수를 선언, 아래에서 호출하세요..
	static int pay(int apple, int banana, int straw) {
		System.out.println("사과의 갯수:"+apple);
		System.out.println("바나나의 갯수:"+banana);
		System.out.println("딸기의 갯수:"+straw);
		int tot = apple + banana + straw;
		return tot;
	}
	// ex) getBus() 인원수 전달할 때,  총비용(인원수*2000)을 리턴해주는 함수를 처리하세요..
	//     합수안에서 @@명이 탑승 했습니다..
	static int getBus(int cnt) {
		System.out.println(cnt+"명이 탑승 했습니다!!");
		int totPay = cnt*2000;
		return totPay;
	}
	
	public static void main(String[] args) {
		// 버스총비용: @@@@
		System.out.println("버스의 총비용:"+getBus(5));
		System.out.println("출력값:"+2);
		int no1 = 2;
		System.out.println("출력값:"+no1);
		
		
		System.out.println("과일구매 함수 호출:"+pay(3,2,1));
		int totPay = pay(2,1,4)*1000;
		System.out.println("총 비용:"+totPay);
		
		
		
		System.out.println("결과값:"+plus(25,5));
		int sum2 = 25 + plus(5,5);
		System.out.println("합산값:"+sum2);
		
		System.out.println("리턴한값:"+call());
		int no = call();
		System.out.println("변수:"+no);
		int sum = no + call();
		System.out.println("sum:"+sum);
		
		
		//A01_Function f1 = new A01_Function();
		//f1.call(4000,5);
		call(4000,5);
		call(5000,3);
		call(7000,2);

	}

}
/*
# 자바의 함수
1. 자바의 함수는 코드의 **재사용성**을 높이고, 프로그램의 구조를 간결하게 유지하는 데 중요한 역할을 합니다.
	함수는 특정 작업을 수행하는 코드 블록으로, ***호출될 때마다*** 실행됩니다. 여기에는 메서드의 기본 개요와
	단계별로 설명된 함수의 연습 예제를 진행해보고자 합니다.
2. 함수(메서드)
	1) 정의 : 함수는 클래스 내부에 정의되며, 이름을 가지고 있습니다.
	2) 구조 : 함수는 메서드 시그니쳐(이름, 매개변수, 반환유형)와 중괄호({})로 둘러싸인 코드 블록으로
		구성됩니다.
	3) 사용 : 다른 부분에서 함수를 호출하여 실행할 수 있으며, 호출 위치로부터 함수가 반환되어 다시
		호출위치로 돌아갑니다.
	4) 유형 : 메서드는 매개변수를 통해 입력을 받고, 반환 유형을 통해 결과를 반환할 수 있습니다.
3. 기본형식
	반환유형 함수명(매개변수1, 매개변수2,...){
		프로세스 처리..
		return 반환될데이터;
	}
	ex)
	# 정의된 곳..
	int plus(int no1, int no2){
		int sum = no1 + no2;
		return sum;
	}
	
	main()
		# 호출되는 곳..
		System.out.println("합산결과:"+plus(25,5));  ==> 합산결과:30
		int tot1 = plus(5,5);
		System.out.println("변수로 결과:"+tot1);      ==> 변수로 결과:10
	
	
	
	
	
	
	
	
	
	
	
	
	
	
 */