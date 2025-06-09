package web.com.springweb.a01_start.a01_controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import a01_diexp.vo.Person;
// ex) A10_ModelAttrController
//     ModelAttribute Product 클래스로 객체를 생성해서 처리하고..
//     show13, show14, show15 ==> a13_show.jsp a14_show.jsp a15_show.jsp


@Controller
public class A09_ModelAttributeController {
	// ModelAttribute : 
	// 개념 1 : 요청값 + 모델 데이터
	// 개념 2 : controller 공통모델 데이터 처리..
	@ModelAttribute("person")
	public Person getPerson() {
		return new Person("홍길동",25,"서울");
	}
	// 요청 화면 처리 
	// http://localhost:5050/show10
	@GetMapping("show10")
	public String show10() {
		return "WEB-INF\\views\\a02_view\\a10_show.jsp";
	}
	// http://localhost:5050/show11
	@GetMapping("show11")
	public String show11() {
		return "WEB-INF\\views\\a02_view\\a11_show.jsp";
	}
	// http://localhost:5050/show12
	@GetMapping("show12")
	public String show12() {
		return "WEB-INF\\views\\a02_view\\a12_show.jsp";
	}
	
	
	
	
	
}
