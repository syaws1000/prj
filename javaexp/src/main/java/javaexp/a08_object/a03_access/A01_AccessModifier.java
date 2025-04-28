package javaexp.a08_object.a03_access;

import javaexp.a08_object.a01_classOb.vo.Movie;
import javaexp.a08_object.a02_object.vo.Student;
import javaexp.a08_object.a03_access.vo.Doll;
import javaexp.a08_object.a03_access.vo.Person;
import javaexp.a08_object.a03_access.vo.Pirate;
import javaexp.a08_object.a03_access.vo.TravelPackage;


// 1. javaexp.a08_object.a02_object.vo  패키지 생성
// 2. javaexp.a08_object.a02_object.vo.Student 클래스 선언.
//    필드로 이름(name), 나이(age), 아이디(studentId)
//    기본생성자, 매개변수처리생성자, get/set 메서드 만들고, 
//    아래에 Student st1, st2 생성하여 set메서드 사용, get메서드 호출..
public class A01_AccessModifier {

	public static void main(String[] args) {
		Student st1 = new Student();
		st1.setName("홍길동");
		st1.setAge(28);
		st1.setStudentId("IO0002");
		Student st2 = new Student("마길동",25,"IO0001");
		System.out.println(st1.getName());
		System.out.println(st1.getAge());
		System.out.println(st1.getStudentId());
		
		System.out.println(st2.getName());
		System.out.println(st2.getAge());
		System.out.println(st2.getStudentId());
		
		
		Movie m01 = new Movie();
		m01.setTitle("재미있는 영화");
		Movie m02 = new Movie("인셉션","크리스토퍼 놀란",null);
		System.out.println(m01.getTitle());
		System.out.println(m02.getTitle());
		
		// TODO Auto-generated method stub
		// 선언 부터 확인  ctrl + shift+o(import)
		// 1. class 앞에 public 붙이면, 다른 패키지라도 import하여
		//    선언 할 수 있지만, public 붙지 않으면, 같은 패키지에서만
		//    접근이 가능하다.
		Pirate p01;
		// 2. 포함되어 있는 생성자의 접근제어자를 확인해서 public이 아니면
		//    외부에서 호출이 불가능하다.
		p01 = new Pirate();
		// 3. 포함된 속성에 대한 접근도 public이면 접근이 가능하지만,
		//    그 외는 에러가 발생한다.
		System.out.println("속성접근:"+p01.treasure);
		// public으로 설정되어 있는 속성 treasure는 다른 패키지 접근 가능	
		
		Person pe01 = new Person(); // ctrl + shift + o
		pe01.setAge(25);
		System.out.println(pe01.getName()); // null 할당이 되지 않아서
		System.out.println(pe01.getAge());
		System.out.println(pe01.getLoc());
		
		Person pe02 = new Person("홍길동",25,"성남");
		System.out.println(pe02.getName()); // 생성자를 통해 할당되 내용 가져온다
		System.out.println(pe02.getAge());
		System.out.println(pe02.getLoc());
		
		Doll d01 = new Doll("토끼인형",15000,true);
		System.out.println(d01.getName());
		System.out.println(d01.getPrice());
		System.out.println(d01.isLimited());
		
		// ex) vo 밑에 TravelPackage
		//        destination(목적지), days(여행기간일단위), price(비용)
		// 기본생성자, 매개변수받는 생성자, set/get메서드 생성..
		// 객체 생성 및 초기데이터 할당. get메서드로 출력..
		TravelPackage tp = new TravelPackage("제주도",3, 299000);
		System.out.println(tp.getDestination());
		System.out.println(tp.getDays());
		System.out.println(tp.getPrice());
		
		
		
	}
}
/*
1.? class 앞에 public 붙은 경우에는 어디서든지 선언이 가능하다.
2. class 앞에 public이 붙지 않으면 다른 패키지에서는 선언시 에러가 발생..



 * 
 * */


/*
# 접근 제어자
1. 자바의 클래스 멤버(필드.메서드)에 붙이는 접근 제어자 public, protected,
	(default), private 네 가지가 있습니다.
	1) public : 누구나 꺼내 쓸 수 있는 멤버입니다. 다른 패키지에서도 마음껏 접근 가능
	2) protected : 같은 패키지 안 또는 상속 관계에 있는 자식 클래스에서만 접근 허용
	3) default(아무런 수식어가 없는 선언): 같은 패키지 안에서만 접근 가능
		패키지가 다르면 아예 존재가 숨겨집니다.
	4) private : 해당 클래스 내부에서만 사용할 수 있습니다. 아무리 같은 패키지나
		자식클래스라도 외부에서는 보이지 않고, 오직 그 클래스 안에서만 꺼낼 수 있습니다.
2. 위 네가지 클래스 내부 구현을 캡슐화(encapsulation)이라고 하면,
	외부에서 잘못된 사용을 막고, 안전하게 데이터를 관리합니다.
	
 * */
