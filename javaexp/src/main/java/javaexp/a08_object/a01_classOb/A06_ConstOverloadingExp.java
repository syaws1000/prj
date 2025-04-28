package javaexp.a08_object.a01_classOb;

public class A06_ConstOverloadingExp {

	public static void main(String[] args) {
		Gift g1 = new Gift();
		Gift g2 = new Gift("초콜릿");
		Gift g3 = new Gift("사탕",3);
		PopcornShop pc1 = new PopcornShop();
		PopcornShop pc2 = new PopcornShop("L");
		PopcornShop pc3 = new PopcornShop("M","카라멜");
		House h1 = new House(3);
		House h2 = new House("노랑색");
		Cart ct1 = new Cart("사과");
		Cart ct2 = new Cart(5);
		Book1 b1 = new Book1("자바 기초", 100);
		Book1 b2 = new Book1(130, "재미있는 동화책");
		Student st1 = new Student("홍길동", true);
		Student st2 = new Student(false,"마길동");
	}
}
class Student{
	Student(String name, boolean isPass){
		System.out.println(name+" 학생의 합격 여부는 "+(isPass?"합격입니다.":"불합격입니다."));
	}
	Student(boolean isPass, String name ){
		System.out.println((isPass?"축하 합니다. 합격입니다.":"아쉽습니다.불합격입니다.")+name+" 학생의 결과입니다. ");
	}
}

// 타입이 다른 순서..
class Book1{
	Book1(String title, int pages){
		System.out.println("읽는 도서는 "+title+"이고, 현재 "+pages+"페이지 읽고 있다.");
	}
	Book1(int pages, String title){
		System.out.println("읽는 도서는 총 "+pages+"페이지로 구성된 "+title+" 도서 이다.");
	}	
}
/*
ex) Student 클래스를 만들고, 다음의 생성자들을 오버로딩 하고, 결과 내용을 @@@ 학생의 합격 여부는 true/false 입니다. 출력
	생성자1 : 문자열(String), boolean  Student(String name, boolean isPass)
	생성자2 : boolean, 문자열(String)  Student(boolean isPass, String name)
*/

// ex) 장바구니에  매개변수 1번째는 문자열로 물건명을 전달받아 @@@을 장바구니에 담았습니다.
//                    2번째는 정수형으로 전달받다 장바구니에 물건을 @@개 담았습니다.   처리되게 생성자를 선언하세요
class Cart{
	Cart(String name){
		System.out.println(name+"을 장바구니에 담았습니다.");
	}
	Cart(int cnt){
		System.out.println("장바구니에 물건을 "+cnt+"개 담았습니다.");
	}
}
class House{
	House(int rooms){
		System.out.println("기본 집이 지어졌습니다.");
		System.out.println("방이 "+rooms+"개 입니다");
	}
	House(String color){
		System.out.println("기본 집이 지어졌습니다.");
		System.out.println("색상이 "+color+" 입니다");
	}	
}

// ex) 팝콘 가게 클래스 만들기 PopcornShop 클래스를 생성하고, 다음 방식으로 생성자 오버로딩 하세요.
//     매개변수가 없을 때 : "팝콘 가게에 오신 걸 환영합니다."
//     매개변수가 1개로 String size : 사이즈 [size]팝콘을 주문하셨습니다.
//     매개변수가 2개로 String size, String flavor : 사이즈 [size], 맛 [flavor]팝콘을 주문하셨습니다.
class PopcornShop{
	PopcornShop(){
		System.out.println("팝콘 가게에 오신 걸 환영합니다.");
	}
	PopcornShop(String size){
		System.out.println("사이즈 "+size+"팝콘을 주문하셨습니다.");
	}
	PopcornShop(String size, String flovor){
		System.out.println("사이즈 "+size+" 맛 "+flovor+" 팝콘을 주문하셨습니다.");
	}
	
}
// Gift클래스를 만들어 다음 3가지 방식으로 객체를 생성하면서 생성자 오버로딩을 처리
class Gift{
	Gift(){ // 매개변수가 없는 생성자
		System.out.println("선물을 준비했어요");
	}
	Gift(String item){ // 매개변수가 1개 있는 생성자
		System.out.println("선물 "+ item+"을 준비했어요!!");
	}
	Gift(String item, int count){// 매개변수가 2개 있는 생성자
		System.out.println("선물 "+ item+"을 "+ count+"개 준비했어요");
	}
}

