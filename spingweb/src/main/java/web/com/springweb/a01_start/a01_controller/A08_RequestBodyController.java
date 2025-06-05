package web.com.springweb.a01_start.a01_controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class A08_RequestBodyController {
	
	// http://localhost:5050/callJsonOb
	@GetMapping("callJsonOb")
	@ResponseBody
	public String callJsonOb() {
		return "안녕하세요(문자열 자체 출력)";
	}
	// http://localhost:5050/helloMsg   ==> Hello!! Good day 화면에 출력.
	@GetMapping("helloMsg")
	@ResponseBody
	public String helloMsg() {
		return "Hello!! Good day";
	}
	
	
}
