package web.com.springweb.a01_start.a01_controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A03_Controller {
	
	// http://localhost:5050/five
	@GetMapping("five")
	public String five() {
		return "WEB-INF\\views\\a02_view\\a02_five.jsp";
	}
}
