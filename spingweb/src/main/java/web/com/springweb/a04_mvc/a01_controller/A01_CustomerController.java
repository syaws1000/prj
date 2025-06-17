package web.com.springweb.a04_mvc.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import web.com.springweb.a04_mvc.a02_service.A01_CustomerService;
import web.com.springweb.a04_mvc.a04_vo.Customer;

@Controller
public class A01_CustomerController {
	@Autowired(required = false)
	private A01_CustomerService service;
	
	
	// http://localhost:5050/customerList
	// 초기화면 호출 메서드 선언..
	@RequestMapping("customerList")
	public String customerList(Customer sch, Model d) {
		
		d.addAttribute("cuList", service.getCustomerList(sch));
		
		return "WEB-INF\\views\\a04_mvc\\a01_customerList.jsp";
	}
	// http://localhost:5050/customerInsert
	@GetMapping("customerInsert")
	public String customerInsert() {
		
		return "WEB-INF\\views\\a04_mvc\\a02_customerInsert.jsp";
	}
	// http://localhost:5050/customerInsert
	@PostMapping("customerInsert")
	public String customerInsertPost(Customer ins, Model d) {
		d.addAttribute("msg", service.insertCustomer(ins));
		
		return "WEB-INF\\views\\a04_mvc\\a02_customerInsert.jsp";
	}	
	@PostMapping("customerUpdate")
	public String customerUpdate(Customer upt, Model d) {
		// 1. 수정 처리..
		d.addAttribute("msg", service.updateCustomer(upt));
		
		// 2. 수정 후, 상세 모델 데이터 설정..
		d.addAttribute("cus", service.getCustomer(upt.getCustomerId()));
		
		return "WEB-INF\\views\\a04_mvc\\a03_customerDetail.jsp";
	}
	
	// http://localhost:5050/customerDetail
	@GetMapping("customerDetail")
	public String customerDetail(@RequestParam("customerId") int customerId, Model d) {
		System.out.println("컨트롤에 온 customerId:"+customerId);
		d.addAttribute("cus", service.getCustomer(customerId));
		return "WEB-INF\\views\\a04_mvc\\a03_customerDetail.jsp";
	}
	
}
