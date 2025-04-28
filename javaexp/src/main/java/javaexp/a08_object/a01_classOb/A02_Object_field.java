package javaexp.a08_object.a01_classOb;

public class A02_Object_field {

	public static void main(String[] args) {
		Car myCar = new Car();
		System.out.println("필드 초기값:"+myCar.model);
		System.out.println("필드 초기값:"+myCar.speed);
		myCar.model = "소나타";
		myCar.speed = 100;
		System.out.println("모델명:"+myCar.model);
		System.out.println("속도:"+myCar.speed);
		Car yourCar = new Car();
		yourCar.model = "그랜저";
		yourCar.speed = 150;
		System.out.println("모델명:"+yourCar.model);
		System.out.println("속도:"+yourCar.speed);
		Doll d1 = new Doll();
		d1.name = "곰돌이 푸";
		d1.price = 15000;
		d1.material = "솜";
		Doll d2 = new Doll();
		d2.name = "뽀로로";
		d2.price = 18000;
		d2.material="극세사";
		System.out.println(" 첫번째 Doll 객체 ");
		System.out.println(d1.name);
		System.out.println(d1.price);
		System.out.println(d1.material);
		System.out.println(" 두번째 Doll 객체 ");
		System.out.println(d2.name);
		System.out.println(d2.price);
		System.out.println(d2.material);
		
		GameCharacter c = new GameCharacter();
		c.nickname = "용감한홍길동";
		c.level = 10;
		c.hp = 120;
		System.out.println("#캐릭터1번째#");
		System.out.println(c.nickname);
		System.out.println(c.level);
		System.out.println(c.hp);
		GameCharacter c2 = new GameCharacter();
		c2.nickname = "행동하는여전사";
		c2.level= 15;
		c2.hp = 400;
		System.out.println("#캐릭터2번째");
		System.out.println(c2.nickname);
		System.out.println(c2.level);
		System.out.println(c2.hp);
	}

}
/*
ex) 게임 캐릭터 GameCharacter클래스
	필드 nickname(이름), level(레벨), hp(체력)
	위 클래스로 좋아하는 게임캐릭터 2개를 생성하여 필드값을 할당 후, 출력하세요..	
*/
class GameCharacter{
	String nickname;
	int level;
	int hp;
}

// EX) 인형가게에서의 Doll 클래스  필드 name(이름), price(가격), material(재료)
//     Doll 객체 2개를 생성하고, 필드에 데이터를 할당 후, 출력하세요..
class Doll{
	String name;
	int price;
	String material;
}
class Car{
	String model; // 자동차의 모델명
	int speed;	// 현재 속도
}
/*
# 필드란?
1. 클래스 내부에 선언된 변수로, 객체의 상태(속성, 특성)를 저장한다.
2. 객체가 생성될 때(메모리-heap)에 할당되면, 객체가 소멸될 때까지 유지된다.
3. 특징
	1) 선언위치 : 클래스 블록 내부(메서드 밖)
	2) 접근방법 : 객체를 통한 접근(객체이름.필드명) ex) myCar.model
	3) 메모리 저장 위치 : heap영역
	4) 기본값 : 초기값이 없으면 자료형별 기본값 설정(ex) int --> 0, String ==> null)
	5) 접근제한 : public, private, protected, default(패키지 내 접근) : 추후 언급
4. 필드의 역할
	1) 객체가 고유한 데이터를 기억하게 하는 역할
	2) 다른 메서드들이 공유하고 사용하는 값/저장소
	3) 상태 기반의 객체 지향 프로그래밍의 핵심 구성요소
5. 기본 형식
	class 클래스이름{
		자료형 필드명; // 필드 선언
		// 생성자 또는 메서드에서 필드 사용
	}
	
*/
