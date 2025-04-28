package javaexp.a08_object.a01_classOb;

public class A04_Overloading {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		CafeOrder c1 = new CafeOrder(); // 기본생성자가 호출..
		//Car1  ca1 = new Car1(); 
		// 에러발생 기본생성자를 더 이상 호출 불가.
		Car1 ca2 = new Car1("그랜저");
		// 매개변수가 있는 생성자를 호출하여야 한다.
		DeliveryBot r1 = new DeliveryBot(); // 매개변수가 없는 생성자 선언되었기에 호출가능
		DeliveryBot r2 = new DeliveryBot("작업형로봇"); // 매개변수가 있는 생성자를 선언하였기에 호출가능
		Cat cat1 = new Cat();
		Cat cat2 = new Cat("나비");
		Movie m1 = new Movie("승부", "김형주");
		Movie m2 = new Movie(); // default 생성자가 없기에..
	}
}
/*
ex) Movie 클래스를 만들어 제목과 감독을 입력받는 생성자를 정의합니다.
	그런데, 기본 생성자 없이 new Movie()를 호출하면 어떤 문제가 생기는지? - 조원들과 잠깐 이야기 
	처리할 내용
	1. Movie(String title, String direct) 생성자를 선언하고, 매개변수의 내용을 출력
	2. 그런 다음에 new Movie()도 동작하도록 기본 생성자를 추가.
	3. 기본 생성자로는 제목없음, 감독미상 값을 설정하여 출력되게 하세요
 * */
class Movie{
	String title;
	String direct;
	Movie(){
		this.title = "제목없음";
		this.direct = "감독미상";
		show();
	}
	Movie(String title, String direct){
		this.title = title;
		this.direct = direct;
		show();
	}
	void show() {
		System.out.println("영화제목:"+title);
		System.out.println("감독:"+direct);		
	}
}
class Cat{
	Cat(){
		System.out.println("이름 없는 고양이!!");
	}
	Cat(String name){
		System.out.println("고양이 이름은 "+name+"입니다.!");
	}
}
/*
ex) 고양이 이름 등록하기
Cat 클래스를 만들고 이름을 설정하는 생성자를 추가하세요
기본 생성자로 Cat()를 호출했을 때, 오류가 생기지 않도록 합니다.
1. 생성자 오버로딩을 사용하여 다음 두 가지가 모두 되게 합니다.
	1) Cat() 호출시, ==> 이름 없는 고양이입니다. 출력
	2) Cat("나비") 호출시 ==> 고양이 이름은 나비입니다. 출력..
	ps) System.out.println();는 생성자 안에서 선언하여 사용 가능..
 * */


class DeliveryBot{
	String name;
	DeliveryBot(){
		name="기본로봇형";
		
	}
	DeliveryBot(String name){
		this.name = name;
	}
}
class CafeOrder{
	// 생성자가 없는 경우
}
class Car1{
	String name;
	Car1(String name){
		this.name = name;
	}
}

/*
# default 생성자
1. 자바의 클래스 안에 생성자를 선언할 때, 기본적으로 지원되는 생성자로
	선언하지 않으면 컴파일시 자동 생성되는 생성자를 말한다.
2. 기본 생성자는 다른 생성자가 선언이 되어 있을 때는 생성되지 않는다.
# overloading
 * */
