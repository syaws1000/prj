package web.com.springweb.a05_ajax.a01_controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A01_AjaxStartController {
	// html view 호출..
	// http://localhost:5050/showFront
	@GetMapping("showFront")
	public String showFront() {
		return "a01_show.html";
	}
	// http://localhost:5050/showFront2
	@GetMapping("showFront2")
	public String showFront2() {
		return "a02_bootStrap.html";
	}
	
}
