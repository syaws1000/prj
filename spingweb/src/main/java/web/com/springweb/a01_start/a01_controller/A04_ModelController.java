package web.com.springweb.a01_start.a01_controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import web.com.springweb.vo.Person;
import web.com.springweb.vo.Product;

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
	//  requestParam(value="no1", defaultValue="0") int no1, 
	// 요청값은 일단 문자열형식이고 그 문자열이 숫자형이면 no1에 자동으로 형변환되어 할당 처리하여
	// 데이터를 가질 수 있다.
	
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
	// http://localhost:5050/modelObj01   
	@GetMapping("modelObj01")
	public String getModelObj01(Model  d) {
		d.addAttribute("myName", "홍길동"); // ==>view단에서 호출 방법  ${myName}
		d.addAttribute("myAge", 27); //==> ${myAge}
		d.addAttribute("prices", new int[] {3000,4000,5000}); // ==> ${prices[0]},${prices[1]},${prices[2]},
		d.addAttribute("person", new Person("마길동",25,"성남")); // ==> ${person.name} : 주의 getName() 없으면 에러 발생.
																// ==> ${person.name}, ${person.age}, ${person.loc}
		return "WEB-INF\\views\\a01_begin\\a08_1_model.jsp"; // view단 호출
	}
	// http://localhost:5050/modelObj02
	// 단일데이터(fruit), 배열데이터( names(String[])), 객체형( Product)
	//  "WEB-INF\\views\\a01_begin\\a08_2_model.jsp
	
	@GetMapping("modelObj02")
	public String getModelObj02(Model d) {
		d.addAttribute("fruit", "사과");
		d.addAttribute("names", new String[] {"홍길동","김길동","신길동"});
		d.addAttribute("product", new Product("오렌지",3000,2));
		return "WEB-INF\\views\\a01_begin\\a08_2_model.jsp";
	}

	
	
	
}
