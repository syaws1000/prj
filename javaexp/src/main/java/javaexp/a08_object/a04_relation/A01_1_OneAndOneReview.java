package javaexp.a08_object.a04_relation;

public class A01_1_OneAndOneReview {

	public static void main(String[] args) {

		Pet p01 = new Pet(); // 종속되지 않는 Pet 객체  (아직 주인이 없는 애완동물)	
		PetOwner po01 = new PetOwner(); 
		// Pet을 가질 수 있는 주인 객체 생성(아직 애완동물은 없지만 가질 수 있는 객체 생성)
		po01.pet = p01; //    1:1 관계 성립으로 Pet은 주인에 종속된 애완 동물이 되고,
		//   주인도 Pet을 가진 주인으로 객체를 가지게 된다.
		po01.pet.name = "귀염둥이1";  // 객체의 참조변수 종속된 pet의 참조변수에 필드 name에 데이터를 할당 처리..
		po01.pet.age = 5;  // 객체의 참조변수 종속된 pet의 참조변수에 필드 name에 데이터를 할당 처리..
		Book b1 = new Book();
		b1.name = "자바기초"; 
		BookBuyer bb1 = new BookBuyer();
		bb1.book = b1; // BookBuyer객체가 Book객체를 소유한 상태..
		
		System.out.println("BookBuyer객체가 가진 Book객체의 이름:"+bb1.book.name);
		bb1.book.price = 32000;
		System.out.println(bb1.book.price);
		Address add = new Address();
		House h01 = new House();
		h01.address = add; // House객체에 address를 할당 처리..
		h01.address.street="테헤란로";
		h01.address.city ="서울시";
		
	}

}
// ex) Address, House 1:1관계 선언후, House객체에 Address객체 할당,  Address에 속성으로 street, city를 설정해서 할당
class Address{
	String street;
	String city;
}
class House{
	Address address;
}


// ex) Book,  BookBuyer 1:1관계 클래스 선언후, 객체에 할당하고, Book의 속성 title, price를 설정해보세요..
class Book{
	String name;
	int price;
}
class BookBuyer{
	Book book;
}
/*
# 1:1관계
1. 객체 안에 객체를 설정하는 것을 말한다..
 * */
// 포함될 객체를 위한 클래스 선언
class Pet{
	String name;
	int age;
	
}
// 포함할 객체를 위한 클래스 선언
class PetOwner{
	Pet pet;
}


