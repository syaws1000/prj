package a01_diexp;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

// 객체들을 선언하여 할당하는 컨테이너(스프링부트에서 처리되는 형식)
@Configuration
public class Config14 {
	
	// 컨테이너 안에 하나의 객체를 할당.
	@Bean
	public Object obj() {
		return new Object();
	}
	

}
