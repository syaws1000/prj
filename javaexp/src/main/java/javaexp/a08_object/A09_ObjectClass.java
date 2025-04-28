package javaexp.a08_object;

public class A09_ObjectClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/* 
		# 객체와 클래스
		*/
		// p01이라는 이름으로 하나의 Person객체를 선언;
		Person p01;
		// p01에 heap영역에서 만든 객체의 주소값을 할당한다. 객체가 생성.
		p01 = new Person("홍길동",25);
		System.out.println(p01);
		// javaexp.a08_object.Person@5305068a
		// 패키지명.객체명@16진수로 heap영역의 주소값
		Person p02 = new Person("오길동",30);
		System.out.println(p02);
		
	}
}
// 클래스로 도면과 같은 내용을 선언..
class Person{
	// 객체의 전역변수(필드)
	String name;
	int age;
	// 객체의 생성자(위에 객체의 전역변수를 초기화 함수) - 클래스명과 동일하다.
	Person(String name, int age){
		this.name = name; // 클래스명 밑에 선언한 전역변수와 매개변수가 동일하기에 구분하기 위해 this.붙임
		this.age = age;
	}
	// 객체의 메서드
	void showInf() {
		System.out.println("이름:"+name);
		System.out.println("나이:"+age);
	}
}

