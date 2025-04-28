package javaexp.a08_object;

public class A02_Function {
	// static : 객체 종속없이 사용..:여러가지 객체를 사용할 때.. 
	static void function01() {
		
		
		
		
		// void : 리턴값이 없을 때
		System.out.println("함수1 호출");
	}
	// ex) function02() 함수 정의   안녕하세요 2번째 함수 출력
	static void function02() {
		System.out.println("함수2 호출");
	}
	// 매개변수.. 
	// 1. ()를 통해 선언된 데이터를 호출하는 곳에서 넘겨줘서 처리하는 데이터를 말한다.
	static void f3(int no) {
		System.out.println("넘겨온 매개변수:"+no);
	}
	static void f4(String str) {
		System.out.println("[f4]넘겨온 매개변수1:"+str);
	}
	static void f5(String str1, int no1) {
		System.out.println("[f5]넘겨온 매개변수1:"+str1 +", 넘겨온 매개변수2:"+no1);
	}
	// ex1) f6 매개변수가 없는  ==> 오늘도 좋은날 출력. 
	// 자동판매..
	static void f6() {
		System.out.println("오늘도 좋은 날1!!");
		System.out.println("오늘도 좋은 날2!!");
		System.out.println("오늘도 좋은 날3!!");
	}
	// ex2) f7 매개변수가 정수형  ==> 구매할 물건은 @@ 개입니다.
	static void f7(int cnt) {
		System.out.println("구매할 물건은 "+cnt+" 개입니다.");
	}
	// ex3) f8 매개변수가 문자열로  ==> 내가 좋아하는 색상은 @@색입니다.
	static void f8(String color) {
		System.out.println("내가 좋아하는 색상은 "+color+"색입니다.");
	}
	// ex4) f9 매개변수가 문자열, 정수로  ==> 나의 이름은 @@이고, 나이가 @@살입니다.
	static void f9(String name, int age) {
		System.out.println("나의 이름은 "+name+"이고, 나이가 "+age+"살입니다.");
	}
	// 함수정의
	
	public static void main(String[] args) {
		f9("마길동",25);
		f9("오길동",27);
		f9("하길동",29);
		f8("빨강");
		f8("파랑");
		f8("노랑");
		f7(5);
		f7(4);
		f7(3);
		f7(6);
		f6();
		f6();
		f6();
		f6();
		f3(25);
		f3(30);
		//f3("오길동");
		f4("마길동");
		f5("홍길동",30);
		
		
		// 같은 클래스에서 선언된 함수를 호출
		function01();
		function01();
		// 함수호출
		function02();
		function02();
		
		
		/*
		# 함수
		1. 자바에서 함수(function)는 프로그램 내에서 특정 작업을 수행하는 독립적인 코드 블록을
		의미하며, 자바에서는 이름 메서드라고 부른다. 함수(메서드)는 여러 번 호출하여 사용할 수 있기때문에
		코드의 재사용성을 높이고, 프로그램을 더 효율적으고 구조적으로 만들 수 있다. 자바의 함수는 주로
		클래스 내에서 정의되면, 클래스의 객체를 통해 호출된다.
		ex) 비슷예로 자판기, 음료 자판기(메서드명), 카드처리/현금입력/선택번호(매개변수입력),
		         결과물 콜라, 사이다, 거스름돈(리턴값)
		2. 함수의 주요 특징
			1) 메서드의 정의
				메서드는 메서드명, 반환 타입, 매개변수로 구성된다.
			2) 메서드의 호출
				메서드는 정의된 후, 다른 곳에서 호출하여 실행할 수 있다.
			3) 반환 타입
				메서드는 작업을 수행하고, 값을 반환할 수 있으며 반환되지 않는 경우에는 void를 사용한다.
			4) 매개변수
				메서드는 외부로부터 입력을 받을 수 있으며, 이를 매개변수로 처리한다.
		3. 함수의 정의 구조
			[접근제어자][반환타입] 메서드명(매개변수,...){
				// 메서드 호출시 처리할 내용
				return 반환값;
			}	
			// ex)
			public int plus(int no1, int no2){
				int tot = no1 + no2;
				return tot;
			}
				
		 * */
	}

}
