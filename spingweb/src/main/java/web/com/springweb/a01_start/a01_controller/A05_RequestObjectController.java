package web.com.springweb.a01_start.a01_controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import web.com.springweb.vo.Person;

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
}
