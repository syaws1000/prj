package web.com.springweb.a05_ajax.a01_controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class A02_AjaxController {
	// a03_callAjax.html 초기파일 호출..
	// A02_AjaxController
	//   1) 초기화면 호출 하는 메서드  showFront3  
	//   2) ajax 호출하는 메서드  ajax03
	// http://localhost:5050/showFront3
	@GetMapping("showFront3")
	public String showFront3() {
		return "a03_callAjax.html";
	}
	// http://localhost:5050/ajax03
	@GetMapping("ajax03")
	@ResponseBody
	public String ajax03() {
		return "재미있는 ajax 시작!!";
	}
	
	
}
