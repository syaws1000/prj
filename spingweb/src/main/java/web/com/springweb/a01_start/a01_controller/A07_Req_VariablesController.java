package web.com.springweb.a01_start.a01_controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class A07_Req_VariablesController {

	// http://localhost:5050/@@@@    해당 url에 있는 문자열로 요청값을 처리하는 경우.
	// http://localhost:5050/user/himan    해당 url에 있는 문자열로 요청값을 처리하는 경우.
	// http://localhost:5050/user/higirl    해당 url에 있는 문자열로 요청값을 처리하는 경우.
	@GetMapping("/user/{userId}")
	public String getUserInf(@PathVariable String userId, Model d) {
		// PathVariable  : 모델값을 설정
		// view단에 대한 파일명을 부분적으로 지정할 때....
		System.out.println("입력된:"+userId);
		
		
		d.addAttribute("userId", userId+"님!!");
		return "/user/a20_variablesExp.jsp";
	}
	// http://localhost:5050/page/page01
	// http://localhost:5050/page/page02
	// http://localhost:5050/page/page03
	//   {pageNo}
	@GetMapping("/page/{pageNo}")
	public String pageNo(@PathVariable String pageNo, Model d) {
		// PathVariable  : 모델값을 설정
		// view단에 대한 파일명을 부분적으로 지정할 때....
		System.out.println("입력된:"+pageNo);
		d.addAttribute("pageNo", "페이지번호:"+pageNo);
		return "/page/a21_variablesExp.jsp";
	}	
	
}
