package web.com.springweb.a01_start.a01_controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A06_GetPostController {
	// http://localhost:5050/call02
	// a18_getpostView.jsp
	// get방식으로 화면 호출
	@GetMapping("call02")
	public String call02() {
		return "WEB-INF\\views\\a01_begin\\a18_getpostView.jsp";
	}
	
	
	// post방식으로 요청값 전달  Product (모델어트리뷰터 처리)
	
}
