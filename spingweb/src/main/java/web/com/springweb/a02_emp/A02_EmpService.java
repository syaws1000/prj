package web.com.springweb.a02_emp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.com.springweb.a02_emp.vo.Emp;

@Service
public class A02_EmpService {
	@Autowired
	private A03_EmpDao dao;
	
	public List<Emp> empList(){
		// 비지니스(알고리즈 처리시 해야할 코드)...
		
		return dao.empList();
	}
}
