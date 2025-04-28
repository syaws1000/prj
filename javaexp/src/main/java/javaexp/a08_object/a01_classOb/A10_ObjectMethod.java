package javaexp.a08_object.a01_classOb;

public class A10_ObjectMethod {

	public static void main(String[] args) {
		UserProfile up1 = new UserProfile("홍길동", 25);
		up1.showProfile();
		up1.updateStatus("휴식중");
		up1.showProfile();
		Stud st1 = new Stud("홍길동"); st1.showStudInf(); st1.upateGrade("A"); st1.showStudInf();
		Product pr1 = new Product("사과","3000"); pr1.showproduct();pr1.updatePrice("4000");
		pr1.showproduct();
		
	}
}

class Product{
	String productName;
	String price;
	public Product(String productName, String price) {
		this.productName = productName;
		this.price = price;
	}
	void showproduct() {
		System.out.println("# 물건 정보 출력 #");
		System.out.println("물건명:"+productName);
		System.out.println("물건가격:"+price+"원");
	}
	void updatePrice(String price) {
		this.price = price;
		System.out.println(productName+"의 가격 변경:"+price+"원");
	}
	
}
class Stud{
	String name;
	String grade;
	public Stud(String name) {
		this.name = name;
		grade = "C";
	}
	void upateGrade(String grade) {
		this.grade = grade;
		System.out.println(name+"의 등급을 "+grade+"로 변경!!");
	}
	void showStudInf() {
		System.out.println("학생명은 "+name+"이고 성적 등급은 "+grade+"입니다." );
	}
	
}
// 필드로 name,  grade(성적등급)으로 하여, 초기 생성자로 이름값을 받고, "C"로 grade 등급이 설정된 후,
// upateGrade()를 통해 매개변수로 등급이 변경되게 하고,  showStudInf()로 학생이름과 성적등급이 출력되게 하세요..


// 문자열이나 다른 유형으로 객체의 메서드의 매개변수로 받는 유형들.
class UserProfile{
	String userName;
	int age;
	String status;
	UserProfile(String userName, int age) {
		this.userName = userName;
		this.age = age;
		status="활동 중";
	}
	void updateStatus(String status) {
		this.status = status;
		System.out.println(userName+"의 상태가 "+ status+"로 수정되었습니다.");
	} 
	void showProfile() {
		System.out.println("# "+userName+"의 프로파일 #");
		System.out.println("나이 :"+age+"세");
		System.out.println("현재 상태:"+status);
	}
}
