package a01_diexp;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import a01_diexp.vo2.Product;
import a01_diexp.vo2.Engine;
import a01_diexp.vo2.Person;

public class Diexp14 {

	public static void main(String[] args) {
		// TODO Auto-generated method stubConfig10.java
		// 가상의 컨테이에 있는 객체를 호출하기 위한 객체 선언과 생성 및 호출
		AnnotationConfigApplicationContext ctx = 
				new AnnotationConfigApplicationContext(Config14.class);	
		Object ob = ctx.getBean("obj"); // Bean으로 설정된 이름으로 호출..
		System.out.println("컨테이너 안에 있는 객체 :"+ob);
		Person person = ctx.getBean("person", Person.class); // Bean으로 설정된 이름으로 호출..
		System.out.println("컨테이너 안에 있는 객체 :"+person);
		person.setName("홍길동");
		System.out.println("컨테이너 안에 있는 객체 :"+person.getName());
		// ex1) Engine, Product 객체 호출..
		Engine eng = ctx.getBean("engine", Engine.class);
		eng.setEngineType("v6");
		System.out.println("자동 객체 인식 호출:" + eng.getEngineType());
		
		Product prod = ctx.getBean("prod", Product.class);
		prod.setName("사과");
		System.out.println("호출된 객체:"+prod.getName());
		
		// ex2)  vo3 클래스 복사,   Config15  vo3패키지 호출,  Diexp15  호출..
		
		
		
		
		
		
		
		ctx.close();
	}

}
