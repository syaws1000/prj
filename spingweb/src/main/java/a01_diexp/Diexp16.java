package a01_diexp;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import a01_diexp.vo.Food;
import a01_diexp.vo4.Car;
import a01_diexp.vo4.Engine;
import a01_diexp.vo4.Mart;
import a01_diexp.vo4.Pet;
import a01_diexp.vo4.PetOwner;
import a01_diexp.vo4.Product;


public class Diexp16 {

	public static void main(String[] args) {
		// TODO Auto-generated method stubConfig10.java
		// 가상의 컨테이에 있는 객체를 호출하기 위한 객체 선언과 생성 및 호출
		AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext(Config16.class);
		Object ob = ctx.getBean("obj"); // Bean으로 설정된 이름으로 호출..
		System.out.println("컨테이너 안에 있는 객체 :"+ob);
		// 단일 객체 호출..
		Car c1 = ctx.getBean("car", Car.class);
		c1.setModel("그랜저");
		System.out.println(c1.getModel());
		Engine e1 = ctx.getBean("engine", Engine.class);
		e1.setEngineType("V6");
		System.out.println(e1.getEngineType());
		
		Engine e2 = c1.getEngine(); // Car 객체 안에 있는 Engine 객체 호출..
		// e2.setEngineType("V5");    // 에러 발생.. (Autowiring 전)...
		//System.out.println(e2.getEngineType());  에러 발생.. (Autowiring 전)...
		e2.setEngineType("V5");    // 코드에 의해서 자동으로 container에 할당되었기 때문에 할당 가능
		System.out.println(e2.getEngineType());  // autowiring 이후..
		// Mart 객체와 Product 객체를 autowiring 처리하여 속성값을 지정하고 출력하세요..
		
		Mart m1 = ctx.getBean("mart", Mart.class);
		
		Product p01 = m1.getProduct();
		p01.setName("마트안에 있는 사과 객체");
		System.out.println(p01.getName());
		
		Pet p1 = ctx.getBean("pet", Pet.class);
		PetOwner po01 = p1.getPetOwner();
		po01.setName("펫주인 홍길동");
		System.out.println(po01.getName());
		// Pet 객체 안에 컨테이너에 Food객체가 없기에 발생함
		Food f1 = p1.getFood();
		System.out.println(f1); // 
		// 만약에 컨테이너 안에 객체가 없을 수 있는 것을 대비해서 required = false 옵션을
		// 설정하면 컨테이너에 객체가 생성되지 않는 객체도 에러는 없이 처리된다..
		
		
		
		ctx.close();
	}

}
