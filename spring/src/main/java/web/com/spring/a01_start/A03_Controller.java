package web.com.spring.a01_start;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class A03_Controller {
	// http://localhost:5052/show01
	// 초기화면 호출..
	@GetMapping("show01")
	public String show01() {
		return "WEB-INF\\views\\a01_basic\\a03_show.jsp";
	}
	// http://localhost:5052/show02?memName=홍길동
	// 요청값 전달
	@GetMapping("show02")
	public String show02(@RequestParam("memName") String memName) {
		System.out.println("서버에 전달된 요청값:"+memName);
		return "WEB-INF\\views\\a01_basic\\a03_show.jsp";
	}

	// http://localhost:5052/show03  ==> a04_show.jsp
	@GetMapping("show03")
	public String show03() {
		return "WEB-INF\\views\\a01_basic\\a04_show.jsp";
	}	
	// http://localhost:5052/show04?price=3000  ==> a04_show.jsp
	@GetMapping("show04")
	public String show04(@RequestParam("price") int price) {
		System.out.println("서버에 전달된 요청값:" + price);
		return "WEB-INF\\views\\a01_basic\\a04_show.jsp";
	}	
	// 요청화면 처리와 요청값 처리를 동일하게 하는 처리
	// 요청값이 없을 때와 있을 때, 동일하게 처리해는 @RequestParam(value="nickName", defaultValue = "")
	// http://localhost:5052/show05
	// http://localhost:5052/show05?nickName=화이트울프
	@GetMapping("show05")
	public String show05(@RequestParam(value="nickName", defaultValue = "") String nickName) {
		System.out.println("서버에 요청값 전달된 데이터:"+nickName);
		
		return "WEB-INF\\views\\a01_basic\\a05_show.jsp";
	}
	// http://localhost:5052/show06
	// http://localhost:5052/show06?prodName=사과
	// ==> a06_show.jsp
	@GetMapping("show06")
	public String show06(@RequestParam(value="prodName", defaultValue="") String prodName) {
		System.out.println("물건명:"+prodName);
		return "WEB-INF\\views\\a01_basic\\a06_show.jsp";
	}
	
	
	
	
	
	
}
