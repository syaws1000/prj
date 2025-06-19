package web.com.springweb.a05_ajax.a01_controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A03_AjaxController {
		
	// 데이터 유형별로 ajax 데이터 처리 형식
	// ResponseEntity<?>  : ? - 유형이 어떤 유형이든지 상관없이 처리하려면..
	// http://localhost:5050/ajax04
	@GetMapping("ajax04")
	public ResponseEntity<?> ajax04(){
		return ResponseEntity.ok("안녕하세요!!-유형별 처리(문자열)");
	}
	// http://localhost:5050/ajax05
	@GetMapping("ajax05")
	public ResponseEntity<?> ajax05(){
		return ResponseEntity.ok(25);
	}	
	// http://localhost:5050/ajax06
	@GetMapping("ajax06")
	public ResponseEntity<?> ajax06(){
		return ResponseEntity.ok(3.14);
	}	
	// ex1)  boolean으로 점수를 선언하고(메서드안에) 합격 여부를 출력되게 하세요..
	// http://localhost:5050/ajax07
	@GetMapping("ajax07")
	public ResponseEntity<?> ajax07(){
		int point = 90;
		return ResponseEntity.ok(point>=80);
	}		
	@GetMapping("ajax08")
	public ResponseEntity<?> ajax08(){
		int point = 90;
		return ResponseEntity.ok(point>=80);
	}	
	// http://localhost:5050/ajax09
	@GetMapping("ajax09")
	public ResponseEntity<?> ajax09(){
		String [] arr = {"사과","바나나","딸기"};
		return ResponseEntity.ok(arr);
	}		
	// http://localhost:5050/ajax10
	//  int[]으로 점수 80, 90, 100  출력하세요..
	@GetMapping("ajax10")
	public ResponseEntity<?> ajax10(){
		int [] arr = {80,90,100};
		return ResponseEntity.ok(arr);
	}		
	// http://localhost:5050/front04
	@GetMapping("front04")
	public String front04() {
		return "a01_ajax\\a04_front.html";
	}
	
	
	
	
	
	
	
	

}
