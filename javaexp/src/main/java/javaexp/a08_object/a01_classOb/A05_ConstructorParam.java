package javaexp.a08_object.a01_classOb;

public class A05_ConstructorParam {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		GameCharact c1 = new GameCharact();
		GameCharact c2 = new GameCharact("홍길동");
		GameCharact c3 = new GameCharact("루피", 5);
	}
}

class GameCharact{
	String name;
	int level;
	// 기본 생성자 : 매개변수가 없고, 필드에 기본값을 할당처리
	GameCharact(){
		name="이름 없는 용사";
		level = 1;
		System.out.println("기본 캐릭터가 생성되었습니다.");
	}
	// 이름만 받는 생성자
	GameCharact(String name){
		this.name = name;
		this.level = 1;
		System.out.println(name+" 캐릭터가 생성되었습니다.");
	}
	GameCharact(int name1){

		System.out.println(name+" 캐릭터가 생성되었습니다.");
	}	
	// 이름과 레벨을 받는 생성자.
	GameCharact(String name, int level){
		this.name = name;
		this.level = level;
		System.out.println(name+" 레벨 "+level+" 캐릭터가 생성되었습니다!!");
	}
	GameCharact(int level, String name){

	}	
	//GameCharact c3 =  GameCharact("루피", 5);
}
/*
# 생성자 오버로딩
1. 같은 클래스 안에서 여러 개의 생성자를 정의하는 것을 말하는데, 매개변수의 개수나 타입이 다르면 
	동시에 존재할 수 있다는 것을 말한다. 이것은 생성자뿐만아니라 메서드에서도 적용된다.
2. 생성자 오버로딩 기본 형식
	class 클래스이름{
		// 기본생성자
		클래스명(){}
		// 오버로딩된 생성자
		클래스명(타입1 매개변수1){}
		// 오버로딩된 생성자2
		클래스명(타입1 매개변수1, 타입2 매개변수2){}
	}
3. 위 예제와 같이
	1) 규칙1 : 매개변수의 갯수가 다르면 선언이 가능하다.
		GameCharact(){}	매개변수 없음
		GameCharact(String name1){} 매개변수 1개
	2) 규칙2 : 매개변수의 갯수가 1개이상일 때, 같더라도 타입이 다르면 선언이 가능하다.
		GameCharact(String name2){} 매개변수 1개
		GameCharact(int level){} 매개변수 1개 같지만 위에는 String이고, 아래는 int 즉 타입이 다르다.
	3) 규칙3 : 매개변수의 갯수와 타입이 같더라도 다른 타입의 순서를 다르게 선언하면 가능하다.
		GameCharact(String name, int level){}   // 먼저 String이고, 그 다음 int
		GameCharact(int level, String name){}   // 먼저 int이고, 그 다음 String
	# 핵심 기준.
	생성자를 호출하는 곳에서 구분가능여부에 따른
	new GameCharact();	
	new GameCharact("홍길동");	
	new GameCharact(5);	
	new GameCharact("홍길동",5);	
	new GameCharact(5,"마길동");	
4. 정리
	1) 생성자 이름은 클래스명과 같아야 한다.
	2) 오버로딩은 매개변수의 갯수, 타입, 순서가 달라야 가능하다.
	3) 리턴타입은 관계 없음(생성자는 리턴타입이 없음)
 * */




