package javaexp.a08_object.a01_classOb;

public class A01_ClassObjectExp {

	public static void main(String[] args) {
		
		
		
		// 하나의 클래스로부터 만들어진 객체
		// 클래스명 객체의참조변수 = new 생성자명();
		// 객체의참조변수에는 객체의 이름(패키지명+heap영역의주소값을 저장)
		Person p01 = new Person();
		Person p02 = new Person();
		Person p03 = new Person();
		System.out.println("클래스로부터 만든 객체1:"+p01);
		System.out.println("클래스로부터 만든 객체2:"+p02);
		System.out.println("클래스로부터 만든 객체3:"+p03);
		// ex) Book를 하단에 선언하고,   b1,b2,b3로 Book클래스로 부터 만든 객체를 선언하고, 
		//     참조변수를 출력하세요..
		Book b1 = new Book();
		Book b2 = new Book();
		Book b3 = new Book();
		System.out.println("클래스로부터 만드 Book객체 b1:"+b1);
		System.out.println("클래스로부터 만드 Book객체 b2:"+b2);
		System.out.println("클래스로부터 만드 Book객체 b3:"+b3);
		/*
		# 클래스란?
		1. 설계도이다.
		2. 객체를 만들기 위한 청사진이면, 속성(필드)와 행동(메서드)을 정의한다.
		EX) 자동차라는 클래스는 바퀴, 색상, 속도 등의 속성 + 달린다, 멈춘다 등의 행동을 정의한다.
		# 객체란?
		1. 클래스로부터 만들어진 실제 사물이다.
		2. 클래스가 설계도라면, 객체는 그 설계도로 만든 제품이다.
		EX) 자동차클래스 ==> 실제 존재하는 내 차, 친구 차 등이 객체이다.
		# 핵심 코드
		class 클래스명 : 객체를 만들기 위한 틀 또는 설계도
		new  : 객체를 메모리(heap영역)에 생성하는 키워드
		생성자 : 클래스를 바탕으로 생성된 실제 인스턴스 객체를 위한 내용
			Person p01 = new Person();
			p01 : 인스턴스(참조변수)
			Person () : 생성자
		필드 : 클래스 내부에 변수(속성)
			class Person{
				String name; // 클래스명 아래에 데이터유형과 변수명으로 선언된 내뇽을 필드라고 한다.
			}
		메서드 : 클래스 내부의 함수(행동)
			class Person{
				void show(){  // 클래스명 밑에 선언된 기능을 처리하는 함수를 메서드라고 한다.
					System.out.println("이름은"+name);
				}
			}
		*/
		
	}

}
class Book{
	
}
// class 선언 : 객체를 위한 틀/설계도
class Person{
	
}
