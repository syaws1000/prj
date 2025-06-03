package a01_diexp;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import a01_diexp.vo.Student;
import a01_diexp.vo.StudentCard;


public class Diexp12 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 가상의 컨테이에 있는 객체를 호출하기 위한 객체 선언과 생성 및 호출
		AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext(Config12.class);
		StudentCard stc = ctx.getBean("stc", StudentCard.class); // Bean으로 설정된 이름으로 호출..
		System.out.println("학생 카드 :"+stc.getCardNumber());
		Student stud = ctx.getBean("stud", Student.class); // Bean으로 설정된 이름으로 호출..
		System.out.println("학생 이름 :"+stud.getName());
		System.out.println("학생 카드번호 :"+stud.getStudentCard().getCardNumber());
		Student stud2 = ctx.getBean("stud2", Student.class); // Bean으로 설정된 이름으로 호출..
		System.out.println("학생 이름 :"+stud2.getName());
		System.out.println("학생 카드번호 :"+stud2.getStudentCard().getCardNumber());
		
		
		
		ctx.close();
	}

}
