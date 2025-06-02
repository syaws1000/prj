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
}
