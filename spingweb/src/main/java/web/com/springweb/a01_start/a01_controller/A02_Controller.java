package web.com.springweb.a01_start.a01_controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A02_Controller {
	// http://locathost:5050/forth
	// 		WEB-INF\\views\\a02_view\\a01_forth.jsp
	@GetMapping("forth")
	public String forthaaa() {
		return "WEB-INF\\views\\a02_view\\a01_forth.jsp";
		
	}
}
// A03_Controller.java
// http://locathost:5050/five
//  	WEB-INF\\views\\a02_view\\a02_five.jsp