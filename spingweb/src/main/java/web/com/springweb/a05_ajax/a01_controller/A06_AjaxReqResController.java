package web.com.springweb.a05_ajax.a01_controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class A06_AjaxReqResController {
	
	// http://localhost:5050/ajax30?len=30   ==> 30*30 900
	@GetMapping("ajax30")
	public ResponseEntity<?> ajax30(@RequestParam("len") int len){
		
		return ResponseEntity.ok(len*len);
	}
	// http://localhost:5050/ajax31?point=70
	//   80점이상이면 true 그외는 false 결과 처리하게 해보세요...
	@GetMapping("ajax31")
	public ResponseEntity<?> ajax31(@RequestParam("point") int point){
		
		return ResponseEntity.ok(point>=80);
	}	
	
	// http://localhost:5050/ajax32?point=70	
	//   80점이상이면 합격 그외는 불합격 결과 처리하게 해보세요...
	@GetMapping("ajax32")
	public ResponseEntity<?> ajax32(@RequestParam("point") int point){
		
		return ResponseEntity.ok(point>=80?"합격":"불합격");
	}		
	
	
}
