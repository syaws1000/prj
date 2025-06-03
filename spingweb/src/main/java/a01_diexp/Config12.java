package a01_diexp;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import a01_diexp.vo.Student;
import a01_diexp.vo.StudentCard;

// 객체들을 선언하여 할당하는 컨테이너(스프링부트에서 처리되는 형식)
@Configuration
public class Config12 {
	
	// 컨테이너 안에 하나의 객체를 할당.
	@Bean
	public StudentCard stc() {
		return new StudentCard("QA214211");
	}
	@Bean
	public Student stud() {
		// 객체 생성
		Student st = new Student("홍길동");
		// 객체 안에 객체를 설정하는 메서드 처리..
		st.setStudentCard(new StudentCard("QA214212") );
		return st;
	}
	@Bean
	public Student stud2() {
		// 객체 생성
		Student st = new Student("마길동");
		// 객체 안에 객체를 설정하는 메서드 처리..
		st.setStudentCard( stc() );
		return st;
	}	
	

}
