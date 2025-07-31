package web.com.spring.a08_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import web.com.spring.vo.Employee100;

@Controller
public class A01_EmployeeController {
	@Autowired(required=false)
	private A02_EmployeeService service;
	
	
	// http://localhost:5052/insertEmployee100
	@GetMapping("insertEmployee100")
	public String insertEmployee100() {
		return "WEB-INF\\views\\a08_db\\a01_insertForm.jsp";
	}
	// http://localhost:5052/insertEmployee100
	@PostMapping("insertEmployee100")
	public String insertEmployee102(Employee100 ins, Model d) {
		d.addAttribute("msg", service.insertEmployee(ins));
		
		return "WEB-INF\\views\\a08_db\\a01_insertForm.jsp";
	}
	
}
