package web.com.springweb.a01_start.a01_controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

// MVC 중에 controller
@Controller  // 
public class A01_StartController {
	// http://localhost:5050/start
	@GetMapping("start")
	public String start() { // 요청값.
		// 모델 데이터 설정
		
		
		// view단 호출..
		return "WEB-INF\\views\\a01_start.jsp";
	}
	// http://localhost:5050/second
	@GetMapping("second")
	public String second() {
		return "WEB-INF\\views\\a01_begin\\a01_show.jsp";
	}
	// http://localhost:5050/third  
	// WEB-INF\\views\\a01_begin\\a02_third.jsp  3번째 스프링 호출..
	@GetMapping("third")
	public String third() {
		return "WEB-INF\\views\\a01_begin\\a02_third.jsp";
	}
	
	
	// A02_Controller.java
	// http://locathost:5050/forth
	// 		WEB-INF\\views\\a02_view\\a01_forth.jsp
	
	
	
	
	
}
