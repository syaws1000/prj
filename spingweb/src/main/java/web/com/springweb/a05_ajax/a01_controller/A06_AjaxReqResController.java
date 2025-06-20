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
	// http://localhost:5050/front32
	@GetMapping("front32")
	public String front32() {
		return "a01_ajax\\front32.html";
	}
	
	// http://localhost:5050/ajax33?price=3000&cnt=2
	@GetMapping("ajax33")
	public ResponseEntity<?> ajax33(@RequestParam("price") int price,
									@RequestParam("cnt") int cnt
			                        ){
		
		return ResponseEntity.ok("총계:"+price*cnt);
	}	
	// http://localhost:5050/ajax34?base=10&height=20    // 삼각형의 면적 : 밑면*높이/2
	@GetMapping("ajax34")
	public ResponseEntity<?> ajax34(@RequestParam("base") int base,
									@RequestParam("height") int height
            						){
	
		return ResponseEntity.ok("삼각형의 면적:"+(base*height/2));
	}	
	// http://localhost:5050/ajax35?id=himan&pwd=7777
	@GetMapping("ajax35")
	public ResponseEntity<?> ajax35(@RequestParam("id") String id,
									@RequestParam("pwd") String pwd
            						){
	
		return ResponseEntity.ok("로그인 여부:"+((id.equals("himan")&& pwd.equals("7777"))?"로그인 성공":"로그인실패"));
	}		
	
	
}
