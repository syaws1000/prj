package javaexp.a08_object.a01_classOb.vo2;

public class PetRobot {
	// 필드 정의
	// 1. 목적 : 객체가 어떤 상태를 갖고 있는지 저장
	// 2. 내용 : 클래스 내에 선언된 변수들이면, 객체마다 고유한 값을 갖는다.
	// 3. 접근제어자 : 클래스 내에서만 사용하기 접근제어자는 private로 붙인다.
	private String name; // 로봇의 이름으로 문자열을 할당할 수 있게 선언.
	private int bettryLevel; // 로봇의 배터리량을 저장할 수 있게 정수로 선언
	// ex) Wizard 클래스 만들고  마법사이름(name), 마력숫자할당변수(mana)
	/*
	# 생성자
	1. 목적 : 객체가 생성될 때, 초기 상태(필드값)을 설정
	2. 내용 : new PetRobot(), new PetRobot("철인24",100);
		
	 * */
	public PetRobot() {} // 메개변수가 없는 생성자
	public PetRobot(String name, int bettryLevel) {
		this.name = name; // 매개변수 name을 필드에 name에 대입
		this.bettryLevel = bettryLevel; // 매개변수 bettryLevel를 필드에 bettryLevel에 대입
	}
	// new PetRobot("철인24",100); 이 경우 결국 필드에 name값에 철인24가 할당,  battryLevel에는 100이 할당..
	/*
	# set/get 메서드 만드는 목적과 기능
	1. 접근제어자 public : 외부 객체에서 해당 객체를 호출이 가능한 접근 제어자..
	2. 캡슐화 :
		1) 필드 은닉 : 클래스 내부의 데이터를 외부에서 직접 접근하는 것을 막아, 데이터 무결성(흠결이 없는 즉 이상이 없는) 보장
			예를 들어 rb.battryLevel = -5; 값은 잘못된 값 할당을 방지한다.
		2) 접근 제어 : getXXX()와 setXXX()메서드를 통해서만 필드에 접근하게 함으로써, 읽기 전용 또는 쓰기 전용으로
			제한할 수 있다.
			예를 들어 비밀번호는 내부에서만 설정하고, 외부에는 절대로 접근하지 않는 no getter 패턴으로도 처리 가능..
	3. 접근 방법.
		PetRobot pr1 = new PetRobot();
		pr1.setName("마징거");  마징거 데이터를 객체에 set메서드로 필드값에 할당할 수 있다. ==> 쓰기만 처리
		pr1.getName(); // 할당된 필드의 값을 다시 가져와서 사용할 수 있다. ==> 읽기만 처리..
		PetRobot pr2 = new PetRobot("철인24",100);
		pr2.name="마길동"  ==> private 이기에 직접 쓰길 불가능
		pr2.name         ==> private 이기에 직접 읽기 불가능
		pr2.getName(); // 생성자를 통해 할당된 필드값을 불러 철인24를 가져올 수 있다. 
	 * */
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getBettryLevel() {
		return bettryLevel;
	}
	public void setBettryLevel(int bettryLevel) {
		this.bettryLevel = bettryLevel;
	}
	
	
	
	
}
