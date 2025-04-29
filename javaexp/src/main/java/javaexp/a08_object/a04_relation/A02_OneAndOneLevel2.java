package javaexp.a08_object.a04_relation;

public class A02_OneAndOneLevel2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Person p01 = new Person("홍길동",25);
		p01.personInfo();
		p01.setPassport(new Passport("KOR791900","한국"));
		p01.personInfo();
	}

}
/*
Menu(menuName, price, showMenu() 대표메뉴 이름과 가격표시)
Cafe(cafeName, location, Menu , setMainMenu(Menu menu), introduceCafe()-카페정보와 대표메뉴출력) 

 * */


// 1:1관계  레벨2 : 여러가지 속성이 있는 클래스 선언과 할당..
// 포함될 클래스 선언
class Passport{
	String passportNumber;
	String nationality;
	public Passport(String passportNumber, String nationality) {
		this.passportNumber = passportNumber;
		this.nationality = nationality;
	}
	// 여권 정보 출력
	public void displayPassportInfo() {
		System.out.println("여권번호:"+passportNumber);
		System.out.println("국적:"+nationality);
	}
}
// 포함할 클래스 선언
class Person{
	private String name;
	private int age;
	private Passport passport;
	public Person(String name, int age) {
		this.name = name;
		this.age = age;
	}
	public void setPassport(Passport passport) {
		System.out.println("여권을 발급을 받았습니다.");
		this.passport = passport;
	}
	public void personInfo() {
		System.out.println("이름:"+name);
		System.out.println("나이:"+age);
		if(passport==null) {
			System.out.println("여권이 아직 없습니다.");
		}else {
			System.out.println("# 여권 정보 #");
			passport.displayPassportInfo();
		}
	}
	
	
}