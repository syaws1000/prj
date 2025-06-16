package web.com.springweb.a01_start.a01_controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

// MVC 중에 controller
/*
1. 스프링 같은 컨테이너 안에서 동일 이름의 bean(객체 생성)이 있으면 안된다..
즉, 동일 클래스명으로 선언(패키지가 다른면 가능) 구동시키는 순간 에러발생..
객체명이 동일하기 때문에.. A01_StartController ==> a01_StartController
로 객체가 참조변수로 만들어 진다.(default) 
ex) 충돌시는 클래스명을 다르게 하든지, Controller("starCtrl") 식으로 컨테이너 명을 다른이름으로 처리한다.

2. 스프링은 동일 url mapping을 허용하지 않는다..
	GetMapping("start")
	Ambiguous mapping. Cannot map 'a01_StartController' method 
	web.com.springweb.a01_start.a01_controller.A01_StartController#start()
	단, PostMapping("start") 으로 선언하면 요청 형식이 다르기때문에 선언이 가능하다.

 * */


@Controller  // 
public class A01_StartController {
	// http://localhost:5050/start
	@GetMapping("start")
	public String start() { // 요청값.
		// 모델 데이터 설정
		
		
		// view단 호출..
		return "WEB-INF\\views\\a01_start.jsp";
	}
	// http://localhost:5050/start01
	// WEB-INF\views\z01_exp\a01_start.jsp
	@GetMapping("start01")
	public String start0122222() { // 요청값.
		// 모델 데이터 설정
		
		
		// view단 호출..
		return "WEB-INF\\views\\z01_exp\\a01_start.jsp";
	}	
	
	
	
	// http://localhost:5050/second
	@GetMapping("second")
	public String second() {
		return "WEB-INF\\views\\a01_begin\\a01_show.jsp";
	}
	// http://localhost:5050/third  
	// WEB-INF\\views\\a01_begin\\a02_third.jsp  3번째 스프링 호출..
	@GetMapping("third")
	public String third() {
		return "WEB-INF\\views\\a01_begin\\a02_third.jsp";
	}
	
	
	// A02_Controller.java
	// http://locathost:5050/forth
	// 		WEB-INF\\views\\a02_view\\a01_forth.jsp
	
	
	
	
	
}
