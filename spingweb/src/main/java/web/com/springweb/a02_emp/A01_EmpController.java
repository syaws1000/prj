package web.com.springweb.a02_emp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import web.com.springweb.a02_emp.vo.Emp;
import web.com.springweb.a03_database.vo.Dept;

@Controller
public class A01_EmpController {
	/*
	 Dao ===> Service ==> Controller 객체가 자동을 할당되어 처리된다..
	*/
	
	@ModelAttribute("deptList")
	public List<Dept> getDept(){
		return service.deptList();
	}
	
	@Autowired(required=false)
	private A02_EmpService service;
	// name=ename value="A",   name="job" value="A"
	// ename=Ajob=A  ==>  Emp( ename="A", job="A")
	//              ==>  Emp( ename=null, job=null)
	// http://localhost:5050/empList
	@RequestMapping("empList")  // get/post 요청값.. ?ename=&job=
	public String empList(Emp sch, Model d) {
		// 1. 요청값 받기 : Emp sch
		// 리스트형 데이터를 view단 전달..
		// 2. 모델데이터 설정..empList : DB 로딩
		d.addAttribute("empList", service.empList(sch)); // List<Emp> DB처리 결과를..
		// 3. view단 호출..
		return "WEB-INF\\views\\a02_emp\\a01_empList.jsp";
	}
}
