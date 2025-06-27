package web.com.spring.a01_start;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import web.com.spring.vo.Person;
import web.com.spring.vo.Product;

@Controller
public class A04_Controller {
	// http://localhost:5052/model01
	// 단일 데이터 모델값 처리
	@GetMapping("model01")
	public String model01(Model d) {
		d.addAttribute("model01", "안녕하세요");
		return "WEB-INF\\views\\a02_model\\a01_model01.jsp";
	}
	// http://localhost:5052/model02
	// name ==> 사과
	// price ==> 3000
	// cnt ==> 5
	// 할당하여 a01_model01.jsp 출력하세요..
	@GetMapping("model02")
	public String model02(Model d) {
		d.addAttribute("name", "사과");
		d.addAttribute("price", 3000);
		d.addAttribute("cnt", 5);
		return "WEB-INF\\views\\a02_model\\a01_model01.jsp";
	}	
	
	// http://localhost:5052/model03
		// name ==> 사과
	@GetMapping("model03")
	public String model03(Model d) {	
		d.addAttribute("prod01", new Product("사과",3000,2));
		return "WEB-INF\\views\\a02_model\\a02_model.jsp";
	}		
	// ${prod1.name}  ${prod1.price}  ${prod1.cnt} 
	
	// http://localhost:5052/model04
	// p01 ==> new Person("홍길동", 25, "성남")
	// a03_model.jsp 
	@GetMapping("model04")
	public String model04(Model d) {
		d.addAttribute("p01", new Person("홍길동",25,"성남"));
		return "WEB-INF\\views\\a02_model\\a03_model.jsp";
	}
	/*
	ModelAttribute : 요청 + 모델 
	매개변개 Person p ==> person
	// http://localhost:5052/modelAttr01
	// http://localhost:5052/modelAttr01?name=홍길동
	// http://localhost:5052/modelAttr01?name=김길동&age=25
	// http://localhost:5052/modelAttr01?name=신길동&age=30&loc=서울
	//	==> 화면단 ${param.name} , Model ${person.name}
	 * */
	@GetMapping("modelAttr01")
	public String modelAttr01(Person p) { // Person p 모델어트리뷰트 ${person.name} ${person.age} ${person.loc} 
		return "WEB-INF\\views\\a02_model\\a04_model.jsp";
	}	
	
	// http://localhost:5052/modelAttr02
	@GetMapping("modelAttr02")
	public String modelAttr02(@ModelAttribute("p01") Person p) {
		// Person p 모델어트리뷰트 ${p01.name} ${p01.age} ${p01.loc} 
		return "WEB-INF\\views\\a02_model\\a05_model.jsp";
	}	


}
