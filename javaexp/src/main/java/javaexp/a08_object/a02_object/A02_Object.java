package javaexp.a08_object.a02_object;

public class A02_Object {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Animal an1 = new Animal("강아지",3);
		an1.cry();
		Car c1 = new Car("빨강", "소나타");
		c1.drive();
	}

}
class Animal{
	String name;
	int age;
	Animal(String name, int age){
		this.name = name;
		this.age = age;
	}
	void cry() {
		System.out.print(age+"살 짜리 ");
		System.out.println(name+" 울고 있습니다!!");
	}
}
class Car{
	String color;
	String model;
	Car(String color, String model){
		this.color = color;
		this.model = model;
	}
	void drive() {
		System.out.println(model+" 모델의 "+color+"색  자동차가 운행합니다.");
	}
}


// class Car  문자열 color(색상), model 속성 선언하고, 생성자로 초기화 처리
//            void drive()를   @@@ 모델의 @@@ 색  자동차가 운행합니다.   출력되게 처리하고..
// main()에서 객체를 생성하고, 메서드를 호출하세요..
/*
자바에서 객체 생성, 필드 초기와, 메서드 사용의 개념을 다음과 같다.
1. 객체 생성: 객체는 우리가 만들고 싶은 물건입니다. 예를들어 자동차를 만든다고 가정해 봅시다.
자동차는 여러가지 속성(차의 색, 모델 등)을 가질 수 있습니다. 이 객체는 클래스라는 틀을 사용해서 만들어요..
2. 필드 초기화 : 클래스에서 만든 객체는 속성을 가질 수 있습니다. 예를들어, 자동차 객체에는 색상, 모델명, 속도
와같은 속성이 있을 수 있죠. 이 속성들을 필드라고 하고, 객체가 만들어질 때 이 속성들의 값을 초기화(설정)해 줍니다.
3. 메서드 사용 : 메서드는 객체가 행동을 할 수 있게 해주는 함수입니다. 예를 들어 자동차는 운전하다라는 행동을
할 수 있는데, 이건 메서드로 정의합니다.
예제 : 동물 객체 만들기(생명체)
1. 클래스 정의:동물이라는 클래스를 만들고, 동물이 가진 속성(이름 나이)을 정의합니다.
2. 객체 생성 : 동물 객체를 만들고, 초기 속성을 설정합니다.
	Animal myAnimal = new Animal("강아지", 3); 이 코드를 사용하여 객체를 만듭니다.
3. 메서드 사용 : 동물이 울다라는 행동을 할 수 있게 메서드를 정의 합니다.
	myAnimal.cry(); 메서드를 호출하면 동물이 울고 있다는 메시지를 출력된다.





 * */
