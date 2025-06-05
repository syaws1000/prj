package web.com.springweb.a02_emp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class A01_EmpController {
	
	
	@Autowired
	private A02_EmpService service;
	
	// http://localhost:5050/empList
	@RequestMapping("empList")
	public String empList(Model d) {
		// 리스트형 데이터를 view단 전달..
		d.addAttribute("empList", service.empList());
		return "WEB-INF\\views\\a02_emp\\a01_empList.jsp";
	}
}
