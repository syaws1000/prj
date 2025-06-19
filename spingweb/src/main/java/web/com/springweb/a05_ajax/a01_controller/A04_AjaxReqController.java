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
	// http://localhost:5050/ajax17?price=3000&cnt=2
	// 요청값 client ==> server에 특정한 데이터 전송시 사용하는 방법(get)
	@GetMapping("ajax17")
	public ResponseEntity<?> ajax17(
									@RequestParam("price") int price,
									@RequestParam("cnt") int cnt
									){
		return ResponseEntity.ok("물건가격은 :"+price+
								", 물건갯수:"+cnt+", 총계:"+(price*cnt));
	}	
	// http://localhost:5050/front09
	@GetMapping("front09")
	public String front09() {
		return "a01_ajax\\a09_front.html";
	}	
	// ajax18?width=300&height=100   직사각형의 밑변과 높이 입력받아.. 넓이를 출력하세요..
	// a10_front.html    넓이출력 ==>  직사각형의 면적은 @@@ 입니다.	
	@GetMapping("ajax18")
	public ResponseEntity<?> ajax18(
									@RequestParam("width") int price,
									@RequestParam("height") int cnt
									){
		return ResponseEntity.ok("직사각형의 면적은 "+(price*cnt)+" 입니다.");
	}	
	// http://localhost:5050/front10
	@GetMapping("front10")
	public String front10() {
		return "a01_ajax\\a10_front.html";
	}		
	
	
}
