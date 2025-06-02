package web.com.springweb.a01_start.a01_controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A04_ModelController {
	// http://localhost:5050/modelController
	@GetMapping("modelController")
	public String modelController(Model d) {
		// 모델값을 설정 key/value ==> 요청객체..
		d.addAttribute("name", "홍길동"); // view단에 넘겨길 핵심데이터 ${name}
		return "WEB-INF\\views\\a01_begin\\a06_model.jsp";
	}
	// http://localhost:5050/modelexp01
	//     icecream   바닐라맛아이스크림.. (모델데이터 설정)
	//     a07_model.jsp
	@GetMapping("modelexp01")
	public String modelexp01(Model d) {
		d.addAttribute("icecream", "바닐라맛아이스크림");  /// ==> ${icecream}
		return "WEB-INF\\views\\a01_begin\\a07_model.jsp";
	}
}
