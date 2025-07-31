package web.com.spring.a08_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.com.spring.vo.Employee100;

@Service
public class A02_EmployeeService {
	@Autowired(required=false)
	private A03_EmployeeDao dao;
	
	public String insertEmployee(Employee100 ins) {
		return dao.insertEmployee(ins)>0?"등록성공":"등록실패";
	}
	
}
