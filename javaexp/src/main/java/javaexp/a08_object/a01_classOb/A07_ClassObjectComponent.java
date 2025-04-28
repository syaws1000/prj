package javaexp.a08_object.a01_classOb;

public class A07_ClassObjectComponent {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		HamBurger order1 = new HamBurger("불고기버거", 4000, false); // 생성자를 통해서 속성 초기화
		order1.printOrder();									  // 메서드를 통해서 속성 출력 처리
		HamBurger order2 = new HamBurger("새우버거", 3500, true);
		order2.printOrder();		
	}

}
class HamBurger{
	// 1. 필드 : 객체의 속성
	String name;
	int price;
	boolean hasCheese;
	// 2. 생성자 : 필드의 초기화
	HamBurger(String name, int price, boolean hasCheese){
		this.name = name;
		this.price = price;
		this.hasCheese = hasCheese;
	}
	// 3. 메서드 : 동작정의
	void printOrder() {
		System.out.println("주문한 햄버거:"+name);
		System.out.println("가격:"+price);
		System.out.println("치즈 포함여부:"+(hasCheese?"예":"아니오"));
	}
}
/*
# 객체 구성요소 복합 활용
1. 자바에서 객체를 설계할 때, 가장 중요한 구성 요소는 필드(field), 생성자(Constructor), 메서드(method)이다.
2. 이 세 가지는 서로 독립된 기능을 가지면서도, 객체를 효과적으로 표현하고 조작하기 위해 유기적으로 연결된다.
3. 우선 필드는 객체가 가지고 있어야 할 데이터(속성)을 저장한다.
	예를들어, 로봇이라면 이름(name), 레벨(level), 배터리(battery)같은 값이 이에 해당한다.
	이러한 필드는 객체의 현재 상태를 의미하며, 프로그램이 실행되는 동안 해당 값을 바탕으로 동작하게 된다.
4. 생성자는 객체가 생성될 때 자동으로 호출되며, 필드를 초기화하는 역할을 한다.
	필수적인 값들을 외부에서 받아서 객체 내부의 필드에 할당함으로써, 완전하고 유효한 객체를 생성한다.
5. 메서드는 객체가 할 수 있는 행동이나 기능을 정의한다. 필드에 저장된 데이터를 활용하여 동작하거나,
	내부 상태를 바꾸기도 하며, 외부에 결과를 전달하는 역할도 수행한다.
6. 이 세 가지 요소는 데이터 + 초기화 + 동작이라는 객체지향의 핵심 구조를 이루며,
	객체를 단순한 데이터 덩어리가 아닌 실세계의 행위자처럼 작동하게 해준다.
	
 
 
*/