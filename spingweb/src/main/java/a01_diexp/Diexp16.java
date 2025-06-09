package a01_diexp;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import a01_diexp.vo4.Engine;
import a01_diexp.vo4.Car;


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
		ctx.close();
	}

}
