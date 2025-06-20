package web.com.springweb.a05_ajax.a01_controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import web.com.springweb.vo.Person;
import web.com.springweb.vo.Product;

@RestController
public class A05_RestController {
	// rest controller 리턴하는 유형을 바로 json 데이터로 변환해준다.
	// 주로 json 데이터를 처리할 때, 사용한다.
	// http://localhost:5050/rest01
	@GetMapping("rest01")
	public String rest01() {
		return "안녕하세요";
	}
	// http://localhost:5050/rest02
	@GetMapping("rest02")
	public Person rest02() {
		return new Person("홍길동",25,"LA");
	}	
	// ex) http://localhost:5050/rest03 의 Product 객체 호출하여 화면에 출력하세요..
	// http://localhost:5050/rest03
	@GetMapping("rest03")
	public Product rest03() {
		return new Product("사과",3000,2);
	}
}
