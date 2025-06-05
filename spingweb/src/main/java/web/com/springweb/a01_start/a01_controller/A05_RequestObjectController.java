package web.com.springweb.a01_start.a01_controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import web.com.springweb.vo.Music;
import web.com.springweb.vo.Person;
import web.com.springweb.vo.Product;

@Controller
public class A05_RequestObjectController {
	
	// http://localhost:5050/reqOb01
	@GetMapping("reqOb01")
	public String reqOb01(
				@RequestParam(value="name", defaultValue = "") String name,
				@RequestParam(value="age", defaultValue = "0") int age,
				@RequestParam(value="loc", defaultValue = "") String loc,
				Model d
				) {
		// 요청값을 받아서, 모델객체 p01로 설정하여 view단으로 전송..
		d.addAttribute("p01", new Person(name,age,loc));
		return "WEB-INF\\views\\a01_begin\\a10_modelAttr.jsp";
	}
	// http://localhost:5050/reqOb02
	// ModelAttribute : 요청값을 위와 받아서 모델데이터를 설정까지 한번해주는 개념..
	//    요청값 처리 + 모델 객체 설정 처리 해주는 개념(USEBEAN개념)
	// http://localhost:5050/reqOb02?name=오길동&age=30&loc=서울
	//                          ${p01.name}  ${p01.age} ${p01.loc}
	@GetMapping("reqOb02")
	public String reqOb01( @ModelAttribute("p01") Person p01 ) {
		return "WEB-INF\\views\\a01_begin\\a11_modelAttr.jsp";
	}	
	// http://localhost:5050/reqOb03
	/// 모델 명을 지정하지 않은 객체 소문자 시작으로 자동으로 설정 person
	@GetMapping("reqOb03")
	public String reqOb03(Person p01) { // ${person.name}
		
		return "WEB-INF\\views\\a01_begin\\a12_modelAttr.jsp";
	}	
	// http://localhost:5050/reqOb11
	@GetMapping("reqOb11")
	public String reqOb11(
			@RequestParam(value="name",defaultValue = "") String name,
			@RequestParam(value="price",defaultValue = "0") int price,
			@RequestParam(value="cnt",defaultValue = "0") int cnt,
			Model d
			) {
		d.addAttribute("prod", new Product(name,price,cnt));
		return "WEB-INF\\views\\a01_begin\\a13_modelAttr.jsp";
	}
	// http://localhost:5050/reqOb12
	@GetMapping("reqOb12")
	public String reqOb12(@ModelAttribute("prod") Product prod ) {
		return "WEB-INF\\views\\a01_begin\\a14_modelAttr.jsp";
	}	
	// http://localhost:5050/reqOb13
	@GetMapping("reqOb13")
	public String reqOb13( Product prod ) {
		return "WEB-INF\\views\\a01_begin\\a15_modelAttr.jsp";
	}	
	
	// Product 클래스 기준으로 단계별로 진행하세요.. 
	// reqOb11
	// reqOb12 ... 
	// reqOb13
	//   a13_modelAttr.jsp
	//   a14_modelAttr.jsp
	//   a15_modelAttr.jsp
	// get방식과 초기화면 호출.
	// post방식으로 데이터 요청 처리..
	// get/post방식은 url이 같더라도 선언가능하다.
	// http://localhost:5050/call01
	@GetMapping("call01")
	public String call01() {
		return "WEB-INF\\views\\a01_begin\\a16_view.jsp";
	}
	@PostMapping("call01")
	public String call02(Person p01) { // 모델어트리뷰트로 ${person.name}
		System.out.println("# post방식으로 처리되는 메서드 #");
		System.out.println("이름:"+p01.getName());
		System.out.println("나이:"+p01.getAge());
		System.out.println("사는곳:"+p01.getLoc());
		
		return "WEB-INF\\views\\a01_begin\\a16_view.jsp";
	}
	// 요청객체 + 모델 객체..(모델어트리뷰터)
	//  http://localhost:5050/reqOb15
	//  http://localhost:5050/reqOb15?title=좋은노래1&singer=가수1
	//  요청값 처리 객체를 생성하고, 화면에 출력되게 처리하세요.
	@GetMapping("reqOb15")
	public String call03(Music m) { // ${music.title} ${music.singer}
		return "WEB-INF\\views\\a01_begin\\a17_view.jsp";
	}
	
	
	
	
}
