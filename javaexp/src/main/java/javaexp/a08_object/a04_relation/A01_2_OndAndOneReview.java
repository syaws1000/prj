package javaexp.a08_object.a04_relation;

public class A01_2_OndAndOneReview {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		License li01 = new License("G20250101");// 객체를 생성하고 필드값을 초기화 처리..(운전면허 객체 생성)
		
		Man m1 = new Man();
		m1.name = "홍길동";
		m1.age = 25;
		System.out.println(m1.name);
		System.out.println(m1.age);
		Man m2 = new Man();
		m2.name = "신길동";
		m2.age = 27;
		
		Man m3 = new Man("마길동",29);
		System.out.println(m2.name);
		System.out.println(m2.age);		
		Subject s1 = new Subject(70,80,90);
		//System.out.println(s1.kor); // 접근이 안됨..(호출)
		System.out.println(s1.getKor()); // 접근 가능(호출)
		//s1.kor = 80; /// 저장(x)
		s1.setKor(80);
		//System.out.println(s1.eng);
		//s1.eng = 90;
		s1.setEng(90);
		System.out.println(s1.getEng());
		// 1. Subject eng 앞에 private 
		// 2. 위 호출과 저장 에러 나는거 확인하고,
		// 3. get/set 선언
		// 4. setEng(90) 할당.
		// 5. getEng() 호출 하세요..
		//System.out.println(s1.math);
		s1.setMath(70);
		System.out.println(s1.getMath());
	}

}
class Subject{
	private int kor;
	private int eng;
	private int math;
	// 생성자 선언하고, main()에서 객체 생성하여 필드값을 초기화하고 출력하세요..
	public Subject() {
		// TODO Auto-generated constructor stub
	}
	public Subject(int kor, int eng, int math) {
		this.kor = kor;
		this.eng = eng;
		this.math = math;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	
	
}

class Man{
	String name;
	int age;
	Man(){}
	// 생성자를 선언하는 목적을 필드값을 효과적으로 초기화(데이터할당)하기 위한 목적..
	Man(String name, int age){
		this.name = name;
		this.age = age;
	}
	
	
}

class License2{
	String licenseNumber;
}
// 차소유주와 운전면허
class License{
	
	// 접근제어자를 private를 만들어 직접 접근이 불가능하게 처리
	private String licenseNumber;

	public License() {
	}
	// 생성자를 통해서 필드값을 초기화 처리
	public License(String licenseNumber) {
		this.licenseNumber = licenseNumber;
	}
	// private 로 설정된 필드를 읽기 위한 get메서드로 설정
	public String getLicenseNumber() {
		return licenseNumber;
	}
	// private로 설정된 필드를 쓰기 위한 set메서드로 설정..
	public void setLicenseNumber(String licenseNumber) {
		this.licenseNumber = licenseNumber;
	}	
}
class CarOwner{
	private String name;
	private License license;
	public CarOwner() {
		// TODO Auto-generated constructor stub
	}
	public CarOwner(String name, License license) {
		this.name = name;
		this.license = license;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public License getLicense() {
		return license;
	}
	public void setLicense(License license) {
		this.license = license;
	}
	
	
	
	
	
}