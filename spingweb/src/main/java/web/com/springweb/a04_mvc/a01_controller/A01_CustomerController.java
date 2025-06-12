package web.com.springweb.a04_mvc.a01_controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class A01_CustomerController {
	// http://localhost:5050/customerList
	// 초기화면 호출 메서드 선언..
	@RequestMapping("customerList")
	public String customerList() {
		return "WEB-INF\\views\\a04_mvc\\a01_customerList.jsp";
	}
	// http://localhost:5050/customerInsert
	@RequestMapping("customerInsert")
	public String customerInsert() {
		return "WEB-INF\\views\\a04_mvc\\a02_customerInsert.jsp";
	}
	// http://localhost:5050/customerDetail
	@RequestMapping("customerDetail")
	public String customerDetail() {
		return "WEB-INF\\views\\a04_mvc\\a03_customerDetail.jsp";
	}
	
}
