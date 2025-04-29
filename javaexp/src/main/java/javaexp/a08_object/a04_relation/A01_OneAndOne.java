package javaexp.a08_object.a04_relation;

public class A01_OneAndOne {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 목줄 생성
		Leash myLeash = new Leash("빨간색");
		// 강아지 객체(목줄 연결)
		Dog myDog = new Dog("초코",myLeash);
		myDog.goWalk();
		
		// 강아지 2 객체 생성(푸아숑, 노랑색 목줄로 할당 처리)
		Leash yelLeash = new Leash("노랑색");
		Dog pisong = new Dog("푸아숑", yelLeash);
		pisong.goWalk();
		
		Toy t1 = new Toy("레고(전차부대)");
		Child c1 = new Child("오귀염둥", t1);
		c1.play();
		// 장난감 객체 t2,   아이객체 마이쁜둥  c2    play()
		Toy t2 = new Toy("인형의집");
		Child c2 = new Child("마이쁜둥", t2);
		c2.play();
		Student st1  = new Student(new Bag("구찌백",300),"홍길동");
		st1.gotoSchool();
	}

}
class Bag{
	String brand;
	int price;
	public Bag(String brand, int price) {
		this.brand = brand;
		this.price = price;
	}
	public void showMyBag() {
		System.out.println("가방의 브랜드는 "+brand);
		System.out.println("가방의 가격은 "+price);
	}	
}
class Student{
	private Bag bag;
	private String name;
	public Student(Bag bag, String name) {
		this.bag = bag;
		this.name = name;
	}
	public void gotoSchool() {
		System.out.println("학생의 이름:"+name);
		bag.showMyBag();
	}
}
/*
# Bag(brand) showBag() 책가방브랜드 @@@   Student(name, Bag)  gotoShool() : @@ 가 학교에 갑니다.
                                                                        책가방브랜드 @@@

# 장난감(Toy-장난감이름), showToy() 장남감 이름 출력  장남감 이름은 @@@ 입니다.
  장난감을 가진(Child-chiName, Toy)
  	 play()  @@가 장남감을 가지고 놀아요..
  	 		 장남감 이름은 @@@ 입니다.
 * */
class Toy{
	private String name;
	public Toy(String name) {
		this.name = name;
	}
	public void showToy() {
		System.out.println("장난감의 이름은 "+name+"입니다.");
	}
}
class Child{
	private String chiName;
	private Toy toy;
	public Child(String chiName, Toy toy) {
		this.chiName = chiName;
		this.toy = toy;
	}
	public void play() {
		System.out.println(chiName+" 장난감을 가지고 놀아요");
		toy.showToy();
	}
}


/*
# java에서 1:1관계
1. 하나의 객체가 다른 하나의 객체와 단 하나씩 짝을 이루는 관계를 의미합니다.
	예를들어, 한 사람은 하나의 여권을 가지고 있고, 한 여권도 한 사람에게만 속하는 구조가
	바로 1:1 관계입니다.
2. 자바에서는 1:1 관계를 설정할 때
	1) 한 클래스 안에 다른 클래스 타입의 필드(멤버변수)를 선언하고 표현합니다.
	2) 객체를 생성할 때, 두 객체가 서로 연결되어야 의미 있는 구조가 됩니다.
3. 1:1관계 설정 방법
	1) 1단계 : 클래스 A, 클래스 B를 각각 정의한다.
	2) 2단계 : 클래스 A안에 클래스 B 타입의 필드를 선언한다
	3) 3단계 : 객체 생성 시, 클래스 A의 필드에 클래스 B의 객체를 주입(참조 연결)한다.
	4) 4단계 : 필요 시 두 객체의 데이터에 접근하거나 조작한다.
	

*/
// 목줄
class Leash{
	private String color;

	public Leash(String color) {
		this.color = color;
	}
	public void showLeash() {
		System.out.println("목줄 색상:"+color);
	}
}
class Dog{
	String name;
	Leash leash; // 1:1관계로 객체안에 객체를 설정 처리..
	public Dog(String name, Leash leash) {
		this.name = name;
		this.leash = leash;
	}
	public void goWalk() {
		System.out.println(name+"가 산책을 갑니다.");
		leash.showLeash();
	}
}




