package a01_diexp;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import a01_diexp.vo3.Music;


public class Diexp15 {

	public static void main(String[] args) {
		// TODO Auto-generated method stubConfig10.java
		// 가상의 컨테이에 있는 객체를 호출하기 위한 객체 선언과 생성 및 호출
		AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext(Config15.class);
		Object ob = ctx.getBean("obj"); // Bean으로 설정된 이름으로 호출..
		System.out.println("컨테이너 안에 있는 객체 :"+ob);
		Music m = ctx.getBean("music", Music.class);
		System.out.println(m);
		m.setTitle("아름다운 노래");
		System.out.println(m.getTitle());
		ctx.close();
	}

}
