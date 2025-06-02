package web.com.springweb.a01_start.a01_controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class A03_RequestController {

	// http://localhost:5050/req01?name=&age=0
	@GetMapping("req01")
	public String req01( 
							@RequestParam("name") String name, 
							@RequestParam("age") int age 
			            ) {
		System.out.println("#서버에 온 데이터#");
		System.out.println("이름:"+name);
		System.out.println("나이:"+age);
		return "WEB-INF\\views\\a01_begin\\a03_requestExp.jsp";
	}
	// http://localhost:5050/req02?prod=사과
	@GetMapping("req02")
	public String req02( @RequestParam("prod") String prod ) {
		System.out.println("두번째 요청값:"+prod);
		return "WEB-INF\\views\\a01_begin\\a04_requestExp.jsp";
	}
	
	// http://localhost:5050/req03
	// http://localhost:5050/req03?title=스프링
	// a05_requestExp.jsp
	@GetMapping("req03")
	public String req03(@RequestParam(value = "title", defaultValue = "") String title) {
		System.out.println("세번째 요청값:"+title);
		
		return "WEB-INF\\views\\a01_begin\\a05_requestExp.jsp";
	}
	// http://localhost:5050/req04
	// http://localhost:5050/req04?singer=아이유
	// a06_requestExp.jsp
	
	
	
	
}
