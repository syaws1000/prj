package a01_diexp;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;


public class Diexp10 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 가상의 컨테이에 있는 객체를 호출하기 위한 객체 선언과 생성 및 호출
		AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext(Config10.class);
		Object ob = ctx.getBean("obj"); // Bean으로 설정된 이름으로 호출..
		System.out.println("컨테이너 안에 있는 객체 :"+ob);
		ctx.close();
	}

}
