package web.com.springweb.a05_ajax.a01_controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import web.com.springweb.vo.Person;

@Controller
public class A07_AjaxTypeController {
	// 요청 type에 대한 처리
	// 1. get방식 처리 주로 간단한 데이터를 전송하거나 화면에 특정한 내용을 확인할 때,
	//    사용한다.  type을 설정하지 않을 때, default 형태이다.
	// http://localhost:5050/ajax40
	@GetMapping("ajax40")
	public ResponseEntity<?> ajax40() {
		return ResponseEntity.ok("안녕하세요 get방식은 화면/데이터를 확인할 때");
	}
	// http://localhost:5050/front41
	@GetMapping("front41")
	public String front41() {
		return "a01_ajax\\front41.html";
	}
	// 2. post 방식은 주로 데이터를 등록할 때 주로 활용된다.
	@PostMapping("ajax41")
	public ResponseEntity<?> ajax41(Person p) { // 객체로 요청값을 받아서 처리..
		return ResponseEntity.ok("이름"+p.getName()+", 나이는 "+
						p.getAge()+", 사는곳"+p.getLoc());
	}	
	// 3. put 방식은 주로 전달하는 데이터를 수정할 때, 주로 활용된다.
	// http://localhost:5050/front42
	@GetMapping("front42")
	public String front42() {
		return "a01_ajax\\front42.html";
	}	
	
	@PutMapping("ajax42")
	public ResponseEntity<?> ajax42(Person p) { // 객체로 요청값을 받아서 처리..
		p.setName(p.getName()+"[수정]");
		
		return ResponseEntity.ok("이름"+p.getName()+", 나이는 "+
						p.getAge()+", 사는곳"+p.getLoc()+"수정 처리");
	}		
}
