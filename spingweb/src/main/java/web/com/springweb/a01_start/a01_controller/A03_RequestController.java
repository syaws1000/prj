package web.com.springweb.a01_start.a01_controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A03_RequestController {

	// http://localhost:5050/req01
	@GetMapping("req01")
	public String req01() {
		return "WEB-INF\\views\\a01_begin\\a03_requestExp.jsp";
	}
}
