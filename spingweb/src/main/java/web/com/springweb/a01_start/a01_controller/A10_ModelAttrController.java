package web.com.springweb.a01_start.a01_controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import web.com.springweb.vo.Product;

@Controller
public class A10_ModelAttrController {

	// 이 컨트롤러에서 사용되는 모든 요청처리에 공통되는 model를 처리할 때.
	@ModelAttribute("prod")
	public Product getProduct() {
		return new Product("사과",3000,2);
	}
	// ex) A10_ModelAttrController
//  ModelAttribute Product 클래스로 객체를 생성해서 처리하고..
//  show13, show14, show15 ==> a13_show.jsp a14_show.jsp a15_show.jsp
	// http://localhost:5050/show13
	@GetMapping("show13")
	public String show13() {
		return "WEB-INF\\views\\a02_view\\a13_show.jsp";
	}
	// http://localhost:5050/show14
	@GetMapping("show14")
	public String show14() {
		return "WEB-INF\\views\\a02_view\\a14_show.jsp";
	}
	// http://localhost:5050/show15
	@GetMapping("show15")
	public String show15() {
		return "WEB-INF\\views\\a02_view\\a15_show.jsp";
	}
	
	
	
	
}
