package javaexp.a08_object;

public class A01_ObjectStart {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 객체
		1. 자바에서 객체(Object)는 클래스(class)의 인스턴스(instance)로, 실제 메모리 상에서
			생성되어 데이터를 저장하고 기능을 수행하는 실체이다. 객체는 클래스에서 정의된 속성(변수)와
			행동(메서드)을 가지고 있으면, 이를 통해 프로그램 내에서 실제 동작을 구현할 수 있다.
		2. 객체(Object)
			1) 클래스는 객체의 설계도를 바탕으로 실제로 메모리에 생성된 실체이다. 클래스는
				객체의 속성(변수)와 행동(메서드)를 정의하고, 객체는 이를 기반으로 실제 데이터를
				저장하고, 메서드를 호출하여 동작을 수행한다.
			2) 객체의 구성
				속성(필드, 변수) : 객체의 상태를 나타내는 데이터로, 클래스 내에서 선언된 변수를
					객체마다 개별적으로 가질 수 있다.
				행동(메서드) : 객체가 수행할 수 있는 작업으로, 클래스 내에서 정의된 메서드를
					객체는 호출하여 수행한다.
		 * */
		Car c1 = new Car(); // 아래에 선언된 클래스를 하나의 객체로 생성
		System.out.println("필드 호출:"+c1.kind);
		c1.callCar();
		Car c2 = new Car("BMW", 0);
		c2.driving();
	}
}
// 클래스 선언
class Car{
	// 필드
	String kind = "자동차유형(필드)";
	int speed = 150;
	Car(){}
	// 초기값을 설정하는 생성
	Car(String kind, int speed){
		this.kind = kind; 
		// this는 이 객체가 가지고 있는 구성요소를 접근할 때, 사용  this.kind : 필드
		this.speed = speed;
	}
	void driving() {
		System.out.println(kind+"를 타고 주행하다");
	}
	// 메서드.
	void callCar() {
		System.out.println("차를 호출하다(메서드)");
	}
}



