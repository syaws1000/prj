package a01_diexp;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import a01_diexp.vo.GroupPerson;
import a01_diexp.vo.Person;
import a01_diexp.vo.Product;


public class Diexp13 {

	public static void main(String[] args) {
		// TODO Auto-generated method stubConfig10.java
		// 가상의 컨테이에 있는 객체를 호출하기 위한 객체 선언과 생성 및 호출
		AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext(Config13.class);
		Person person = ctx.getBean("person", Person.class); // Bean으로 설정된 이름으로 호출..
		System.out.println("컨테이너 안에 있는 객체 :"+person.getName());
		System.out.println("컨테이너 안에 있는 객체 :"+person.getAge());
		System.out.println("컨테이너 안에 있는 객체 :"+person.getLoc());
		// prod
		Product prod = ctx.getBean("prod", Product.class); // Bean으로 설정된 이름으로 호출..
		System.out.println("컨테이너 안에 있는 객체 :"+prod.getName());
		System.out.println("컨테이너 안에 있는 객체 :"+prod.getPrice());
		System.out.println("컨테이너 안에 있는 객체 :"+prod.getCnt());
		GroupPerson grpPerson = ctx.getBean("grpPerson", GroupPerson.class);
		System.out.println("팀 이름:"+grpPerson.getTname());
		Person p01 = grpPerson.getPerson();
		System.out.println("팀 소속 이름:"+p01.getName());
		System.out.println("팀 소속 나이:"+p01.getAge());
		System.out.println("팀 소속 지역:"+p01.getLoc());
				
				
		
		ctx.close();
	}

}
