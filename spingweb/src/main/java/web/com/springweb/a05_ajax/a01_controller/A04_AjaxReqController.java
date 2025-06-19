package web.com.springweb.a05_ajax.a01_controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import web.com.springweb.vo.Music;
import web.com.springweb.vo.Product;
import web.com.springweb.vo.Student;

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
	
	// http://localhost:5050/ajax19?name=사과price=3000&cnt=2
	// 해당 객체  setName() setPrice setCnt()가 있으면 객체에 데이터 할당이 되어 매개변수로 사용가능하다.
	// 요청값 client ==> server에 특정한 데이터 전송시 사용하는 방법(get)
	@GetMapping("ajax19")
	public ResponseEntity<?> ajax19( Product pro
									){
		return ResponseEntity.ok("물건명은:"+pro.getName()+", 물건가격은 :"+pro.getPrice()+
								", 물건갯수:"+pro.getCnt()+", 총계:"+(pro.getPrice()*pro.getCnt()));
	}	
	// http://localhost:5050/front11
	@GetMapping("front11")
	public String front11() {
		return "a01_ajax\\a11_front.html";
	}	
	// http://localhost:5050/ajax20?title=사계&singer=오수미     Music
	@GetMapping("ajax20")
	public ResponseEntity<?> ajax20( Music m
									){
		return ResponseEntity.ok("음악타이틀:"+m.getTitle()+", 가수명 :"+m.getSinger());
	}	
	// http://localhost:5050/front12
	@GetMapping("front12")
	public String front12() {
		return "a01_ajax\\a12_front.html";
	}		
	// http://localhost:5050/ajax21?studentId=10&name=홍길동&math=70&eng=80
	@GetMapping("ajax21")
	public ResponseEntity<?> ajax21( Student s ){
		return ResponseEntity.ok("학생의 이름:"+s.getName()+", 평균성적:"+((s.getMath()+s.getEng())/2));
	}	
	// http://localhost:5050/front13
	@GetMapping("front13")
	public String front13() {
		return "a01_ajax\\a13_front.html";
	}	
	
	
}
