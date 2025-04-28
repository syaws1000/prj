package javaexp.a08_object.a01_classOb;

public class A03_Object_Constructor {

	public static void main(String[] args) {
		Bicycle b1 = new Bicycle();
		System.out.println(b1.brand);
		
		Bicycle b2 = new Bicycle("구만리","파랑",7);
		
		System.out.println(b2.brand);
		// 아이스크림 만들기..
		IceCream i1 = new IceCream("딸기아이스크림", "중간", 2000); 
		// 생성자를 통해 처음에 아이스크림 옵션을 정함
		IceCream i2 = new IceCream("초코아이스크림", "대형", 12000);
		System.out.println("# 첫번째 아이스 크림 #");
		System.out.println(i1.flavor);
		System.out.println(i1.size);
		System.out.println(i1.price);
		System.out.println("# 두번째 아이스 크림 #");
		System.out.println(i2.flavor);
		System.out.println(i2.size);
		System.out.println(i2.price);
		Burger bu1 = new Burger("치즈버그",3500);
		Burger bu2 = new Burger("불고기버그",4500);
		System.out.println(bu1.name);
		System.out.println(bu1.price);
		System.out.println(bu2.name);
		System.out.println(bu2.price);
		Book01 bk1 = new Book01("자바의 정석","남궁성",1200,35000);
		Book01 bk2 = new Book01("이것이 자바다","신용권",980,32000);		
		System.out.println(bk1.title);
		System.out.println(bk1.auth);
		System.out.println(bk1.pages);
		System.out.println(bk1.price);
		System.out.println(bk2.title);
		System.out.println(bk2.auth);
		System.out.println(bk2.pages);
		System.out.println(bk2.price);		
	}
}
class Book01{
	String title;
	String auth;
	int pages;
	int price;
	// 생성자 4개 변수 받기
	Book01(String title, String auth, int pages, int price){
		this.title = title;
		this.auth = auth;
		this.pages = pages;
		this.price = price;
	}
	
}
//EX) 1. 햄버그 만들기 class로 Burger로 설정, 필드로 name(종류), price(가격), 생성자를 통해서 위 내용 초기화 처리
//    햄버그 2개를 생성하고 생성자를 통해 초기값을 처리후, 필드를 출력하세요..
class Burger{
	String name;
	int price;
	Burger(String name, int price){
		this.name = name;
		this.price = price;
	}
}

//EX) 2. 도서 등록 시스템에서 사용할 도서명(title), 저자(auth), 페이지수(pages), 가격(price)를 필드로 선언하고,
//    생성자를 통해서 초기화를 처리하고, 등록할 도서 2권을 객체 생성으로 생성하고, 출력해보세요..



/*
1. 예제 코드와 함께 하는 설명
	생성자는 아이스크림을 만들 때, 
	맛은 딸기, 크기는 중간, 가격은 2000원 이렇게 처음부터 정해주는 특별한 방법입니다.
2. 자바에서 아이스크림을 만들 때,
	이 아이스크림은 어떤 맛이고, 크기는 뭐고, 얼마인지 처음에 정해주는 코드가 바로 생성자입니다.
 * */
class IceCream{
	String flavor;
	String size;
	int price;
	// 생성자 아이스크림을 만들 때, 맛, 크기, 가격을 정해요!!
	IceCream(String f, String s, int p){
		this.flavor =f;
		this.size = s;
		this.price = p;
	}
	
}





/*
# 생성자란?
1. 클래스에서 객체가 생성될 때, 자동으로 호출되는 메서드처럼 생긴 특수한 함수.
	주로 필드를 초기화하거나 객체의 기본 상태를 설정하는데 사용된다.
	ex) brand = "삼천리"(초기값 설정), this.brand = brand; (매개변수로 받은 값 할당)
2. 생성자의 특징
	1) 선언(이름선언) : 클래스명과 동일해야 한다.
	2) 반환형 : 없음(void도 작성하지 않음)
	3) 자동호출 : 객체 생성시, new와 함께 자동 호출
	4) 오버로딩 가능 : 매개변수의 수나 타입을 다르게 하여 여러개 선언 가능
		ex) Bicycle(){}
			Bicycle(String brand, int color, int gear){}
	5) 기본 생성자 : 매개변수가 없는 생성자, 직접 만들지 않으면 컴파일러가 자동으로 생성
		ex) class Person{} ===> 선언된 경우에도 main()에서 Person p01 = new Person();
			을 할 수 있는 이유가 여기에 있다.
3. 기본 형식
	class 클래스명{
		클래스명(){ // 생성자
			// 초기화 코드
		}
	}
	class 클래스명{
		String name;
		클래스명(String n){ // 생성자
			this.name = n;
		}
	}
4. 생성자와 일반 메서드 비교
	1) 이름
		생성자는 클래스명과 동일하지만 일반메서드는 자유롭게 선언한다.
	2) 반환형
		생성자는 반환형이 없으나 일반메서드는 void를 포함해서 반환형을 선언하여야 한다.
	3) 호출시점
		생성자는 객체 생성시 자동호출되나 일반메서드는 명시적으로 호출해야 한다.
		Person p01 = new Person(); // 자동호출
		p01.show(); // 명시적 호출
	4) 용도
		생성자는 필드 초기화를 위해서 처리하는 일반메서드는 객체의 동작을 처리하기위하여 한다.
		Person(String name){
			this.name = name; // 필드값 초기화
		}
		void show(){
			System.out.print(name+"이 동작을 한다"); // 출력등 기능적인 처리.
		}
			
*/
class Bicycle{
	String brand;
	String color;
	int gear;
	// 기본 생성자
	Bicycle(){
		brand = "삼천리";	
		color = "빨강";
		gear = 1;
	}
	// 매개변수가 있는 생성자
	Bicycle(String brand, String color, int gear){
		this.brand = brand;
		this.color = color;
		this.gear = gear;
	}	
}
