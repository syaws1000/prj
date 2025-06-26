package web.com.spring.a01_start;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A01_Controller {
	// http://localhost:5052/start
	// 메서드마다 위 url을 통해서 화면 view를 호출 하는 방식..
	@GetMapping("start")
	public String start() {
		return "WEB-INF\\views\\a01_basic\\a01_startView.jsp";  // 복사한 view 경로를 붙여 넣는다.
	}

	// controller ==> view 호출..
	// A02_Controller
	// // http://localhost:5052/second  
	// "WEB-INF\\views\\a01_basic\\a02_secondView.jsp"; 
	
	// http://localhost:5052/callhtml 
	@GetMapping("callhtml")
	public String callhtml() {
		return "a01_callView.html";
	}
	
}
