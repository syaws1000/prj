package a01_diexp;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

// 객체들을 선언하여 할당하는 컨테이너(스프링부트에서 처리되는 형식)
@Configuration
@ComponentScan(basePackages = "a01_diexp.vo2")
public class Config14 {
	// 해당 패키지에 있는 모든 클래스는 객체로 생성하여 현재 컨테이너에 할당
	// 컨테이너 안에 하나의 객체를 할당.
	// 위 패키지 하위에 있는 모든 클래스는 @ - annotation으로 설정하면 모두다
	// 객체를 만들어져서 할당 처리된다..
	@Bean
	public Object obj() {
		return new Object();
	}
	

}
