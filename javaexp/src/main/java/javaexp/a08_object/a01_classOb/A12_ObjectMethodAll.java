package javaexp.a08_object.a01_classOb;

public class A12_ObjectMethodAll {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Hero h1 = new Hero("홍길동",150);
		System.out.println("현재 hp:"+h1.getCurHp());
		h1.greet();
		h1.attack(10);
		h1.attack(20);
		h1.attack(30);
		System.out.println("현재 hp:"+h1.getCurHp());
		h1.usePotion(50);
		h1.usePotion(50);
		System.out.println("현재 hp:"+h1.getCurHp());
	}

}
// 1. 클래스 Hero 선언
// 2. 필드값 name(String), hp(int) 설정
// 3. 생성자로 필드값 할당처리
class Hero{ 
	String name;
	int hp;
	Hero(String name, int hp){
		this.name = name;
		this.hp = hp;
		System.out.println("Hero 객체 생성");
	}
	// 4. name값을 출력하면서 인사하는 매개변수도 없고, 리턴값 없는 void greet()메서드 선언. @@@가 인사합니다.
	void greet() {
		System.out.println(name+"가 인사합니다.!!");
	}
	// 5. 매개변수를 받는 메서드(usePotion)로 int healAmount로 위에 hp 누적 처리 한다.
	//    @@가 체력이  @@@ hp회복되었습니다.
	void usePotion(int healAmount) {
		this.hp += healAmount;
		System.out.println(name+" 체력이 "+healAmount+"hp만큼 회복되었습니다.");
	}
	// 6.  @@가 싸우다가 @@@ hp감속했습니다.  attack
	void attack(int consumAmount) {
		this.hp -=consumAmount;
		System.out.println(name+" 싸우다가 체력이 "+consumAmount+"hp만큼 감소 되었습니다.");
	}
	// 7. 현재 hp를 리턴 처리.. getCurHp()
	int getCurHp() {
		// 현재 가지고 있는 hp를 호출하는 곳에 리턴 처리..
		return hp;
	}
	
	
	
	
}
