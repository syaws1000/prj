package a01_diexp;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import a01_diexp.vo.GroupPerson;
import a01_diexp.vo.Mart;
import a01_diexp.vo.Person;
import a01_diexp.vo.Pet;
import a01_diexp.vo.PetOwner;
import a01_diexp.vo.Product;

// 객체들을 선언하여 할당하는 컨테이너(스프링부트에서 처리되는 형식)
@Configuration
public class Config13 {
	
	// 컨테이너 안에 하나의 객체를 할당.
	@Bean
	public Person person() { // 설정하지 않으면 person
		// Person(String name, int age, String loc)
		return new Person("홍길동",25,"성남");
	}
	// Product 클래스 객체로 컨테이너에 등록..
	@Bean("prod")  // 설정하면 prod
	public Product product() {
		// Product(String name, int price, int cnt)
		return new Product("사과", 3000, 2);
	}
	
	@Bean("grpPerson")
	public GroupPerson grpPerson() {
		GroupPerson p = new GroupPerson("축구팀");
		
		p.setPerson(new Person("차돌이",25,"경남FC"));
		// Person p01 = p.getPerson();
		// p01.getName();
		
		return p;
	}
	@Bean("mart")
	public Mart getMart() {
		Mart m = new Mart("행복한 마트");
		m.setProduct(new Product("사과",2000,5));
		return m;
	}
	@Bean("pet")
	public Pet getPet() {
		Pet p = new Pet("귀염야옹이");
		p.setPetOwner(new PetOwner("야옹이주인",27));
		return p;
	}
}
