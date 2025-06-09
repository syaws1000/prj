package a01_diexp;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

// 객체들을 선언하여 할당하는 컨테이너(스프링부트에서 처리되는 형식)
@Configuration
@ComponentScan(basePackages = "a01_diexp.vo4")  
// 해당 패키지에 있는 클래스는 객체로 컨테이너에 사용하겠다는 의미..
public class Config16 {
	
	// 컨테이너 안에 하나의 객체를 할당.
	@Bean
	public Object obj() {
		return new Object();
	}
	

}
