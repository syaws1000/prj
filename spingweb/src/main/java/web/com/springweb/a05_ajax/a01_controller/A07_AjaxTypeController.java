package web.com.springweb.a05_ajax.a01_controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

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
	
}
