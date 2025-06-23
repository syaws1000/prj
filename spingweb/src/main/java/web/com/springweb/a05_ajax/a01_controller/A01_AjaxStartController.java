package web.com.springweb.a05_ajax.a01_controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class A01_AjaxStartController {
	// html view 호출..
	// http://localhost:5050/showFront
	@GetMapping("showFront")
	public String showFront() {
		return "a01_show.html";
	}
	// http://localhost:5050/showFront100
	
	
	
	// http://localhost:5050/showFront2
	@GetMapping("showFront2")
	public String showFront2() {
		return "a02_bootStrap.html";
	}
	// ajax 호출 시 처리되는 controller
	// 문자열 출력
	// http://localhost:5050/ajax01
	@GetMapping("ajax01")
	@ResponseBody  // json데이터를 문자열로 전달하는 형태
	public String ajax01() {
		return "Good day(좋은 하루)!!";
	}
	// http://localhost:5050/ajax02
	//    반갑습니다. 출력되게 하세요..
	@GetMapping("ajax02")
	@ResponseBody
	public String ajax02() {
		return "반갑습니다.";
	}
	
	
	
	
	
	
	
	
}
