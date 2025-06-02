package web.com.springweb.a01_start.a01_controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	// http://localhost:5050/reqModelExp01
	// http://localhost:5050/reqModelExp01?no1=10&no2=20
	//                                     모델데이터 sum   no1+no2
	@GetMapping("reqModelExp01")
	public String reqModelExp01( 
				@RequestParam(value="no1", defaultValue="0") int no1, 
				@RequestParam(value="no2", defaultValue="0") int no2,
				Model d
			){
		// 요청값 no1로 받되 no1이 없으면 0으로 요청값을 할당해서 no1변수에 처리
		System.out.println("요청값 no1:"+no1);
		System.out.println("요청값 no2:"+no2);
		d.addAttribute("sum", no1+no2);   // ${sum}
		
		return "WEB-INF\\views\\a01_begin\\a08_req_model.jsp";
	}
//	http://localhost:5050/reqModelExp02		
//	http://localhost:5050/reqModelExp02?price=3000&cnt=2
	@GetMapping("reqModelExp02")
	public String reqModelExp02(
				@RequestParam(value="price", defaultValue = "0") int price,
				@RequestParam(value="cnt", defaultValue = "0") int cnt,
				Model d
			) {
		System.out.println("# 요청으로 온 물건 정보 #");
		System.out.println("가격:"+price);
		System.out.println("갯수:"+cnt);
		d.addAttribute("tot", price*cnt);
		return "WEB-INF\\views\\a01_begin\\a09_buy.jsp";
	}
	
	
	
	
	
}
