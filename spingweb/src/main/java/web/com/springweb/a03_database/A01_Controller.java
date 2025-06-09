package web.com.springweb.a03_database;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

// A01_Controller, A02_Service, A03_Dao
// 1. 순차로 호출시는 요청값 전달(매개변수로 전달) :  controller ==> service ==> dao
// 2. 역순으로 결과값을 전달(리턴값으로 전달 ) : dao ==> service ==> controller
// 3. 결과내용을 model로 설정하여, view단에 전달한다.

@Controller
public class A01_Controller {

	@Autowired(required = false)
	private A02_Service service;
	
	
	// http://localhost:5050/daoExpController
	@GetMapping("daoExpController")
	public String getCountByDeptno(@RequestParam(value="deptno", defaultValue = "0") int deptno, Model d) {
		d.addAttribute("count", service.getCountByDeptno(deptno));
		return "WEB-INF\\views\\a03_view\\a01_daoExpView.jsp";
	}
	
}
