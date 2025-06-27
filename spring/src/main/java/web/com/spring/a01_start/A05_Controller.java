package web.com.spring.a01_start;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class A05_Controller {
	
	// 화면 호출 후, 요청값을 받아서 모델 데이터 처리 후, 다시 화면 호출..
	// http://localhost:5052/reqModel01
	// http://localhost:5052/reqModel01?breadCnt=5
	@GetMapping("reqModel01")
	public String reqModel01(@RequestParam(value="breadCnt", defaultValue="0") int breadCnt,
	         Model d) {
		d.addAttribute("buyPrice", breadCnt*2000);

		return "WEB-INF\\views\\a02_model\\a06_reqModel.jsp";
	}	
	

}
