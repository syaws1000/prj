package web.com.springweb.a05_ajax.a01_controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class A04_AjaxReqController {

	// http://localhost:5050/ajax16?name=홍길동
	// 요청값 client ==> server에 특정한 데이터 전송시 사용하는 방법(get)
	@GetMapping("ajax16")
	public ResponseEntity<?> ajax16(@RequestParam("name") String name){
		return ResponseEntity.ok("요청된 값 다시 전달:"+name+"님!!");
	}
	// http://localhost:5050/front08
	@GetMapping("front08")
	public String front08() {
		return "a01_ajax\\a08_front.html";
	}			
}
