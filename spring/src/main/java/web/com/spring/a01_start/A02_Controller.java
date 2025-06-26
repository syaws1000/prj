package web.com.spring.a01_start;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A02_Controller {
	
	// http://localhost:5052/second
	@GetMapping("second")
	public String second() {
		return "WEB-INF\\views\\a01_basic\\a02_secondView.jsp";
	}
	// http://localhost:5052/second2
	@GetMapping("second2")
	public String second2() {
		return "WEB-INF\\views\\a01_basic\\a02_secondView.jsp";
	}	
	// http://localhost:5052/second3
	@GetMapping("second3")
	public String second3() {
		return "WEB-INF\\views\\a01_basic\\a03_secondView.jsp";
	}		
}
