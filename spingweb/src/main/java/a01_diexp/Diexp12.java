package a01_diexp;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import a01_diexp.vo.Car;
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
		// ex) Engine  String engineType,    Car String model, Engine enginType;
		//     Config12  1:1관계 객체로 할당 처리.., 호출 처리..
		Car car01 = ctx.getBean("car01", Car.class);
		System.out.println("모델명:"+car01.getModel());
		// car01.getEngine() : Engine 객체
		/// 
		System.out.println("엔진유형"+car01.getEngine().getEngineType());
		
		
		
		ctx.close();
	}

}
