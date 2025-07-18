package web.com.spring.a09_ajax.a01_controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A01_AjaxStartController {

	// ajax 데이터 처리1. 문자열
	// http://localhost:5052/ajax01
	@GetMapping("ajax01")
	public ResponseEntity<?> ajax01(){
		
		return ResponseEntity.ok("안녕하세요");
	}
	// http://localhost:5052/ajax02   ==> 좋은 하루입니다.  출력되게 처리..
	@GetMapping("ajax02")
	public ResponseEntity<?> ajax02(){
		
		return ResponseEntity.ok("좋은 하루입니다.");
	}	
	//초기 화면 구현
	// http://localhost:5052/ajaxFrm01   
	@GetMapping("ajaxFrm01")
	public String ajaxFrm01() {
		return "a01_ajax\\a01_startAjaxForm.html";
	}
	
	
	
	
	// ajax 데이터 처리2. 숫자
	// ajax 데이터 처리3. 배열
	// ajax 데이터 처리4. 객체
	// ajax 데이터 처리5. List<객체>
	
	
	
}
