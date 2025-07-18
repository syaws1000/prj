package web.com.spring.a09_ajax.a01_controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A20_AjaxController {
	// http://localhost:5052/ajax20
	@GetMapping("ajax20")
	public ResponseEntity<?> ajax20(){
		return ResponseEntity.ok(" Hello");
	}
	//    ajax20   ==> Hello로 출력되게 하고..
	//    ajaxFrm20 ==> 화면  a20_ajax.html
	//     버튼 클릭시, Hello로 출력되게 하세요..
	// http://localhost:5052/ajaxFrm20
	@GetMapping("ajaxFrm20")
	public String ajaxFrm20() {
		return "a01_ajax\\a20_ajax.html";
	}
	
	
	
	
	
}
