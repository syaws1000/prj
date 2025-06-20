package web.com.springweb.a05_ajax.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import web.com.springweb.a05_ajax.a02_service.A01_Service;

@Controller
public class A11_DBController {
	@Autowired(required = false)
	private A01_Service service;
	
	// 기본화면호출
	// http://localhost:5050/dbAjax01View
	@GetMapping("dbAjax01View")
	public String getCountByDeptno() {
		return "a02_ajax\\dbAjax01View.html";
	}
	
	// ajax 처리 호출..
	// http://localhost:5050/dbAjax01?deptno=10
	@GetMapping("dbAjax01")
	public ResponseEntity<?> dbAjax01(@RequestParam("deptno") int deptno){
		return ResponseEntity.ok("부서번호"+deptno+"의 사원 건수:"+
									service.getCountByDeptno(deptno));
	}
	// 1) ajax 처리 호출.. 직책에 따른 최대 급여
	// http://localhost:5050/dbAjax02?job=SALESMAN
	
	
	// 2) ajax 처리 호출.. 사원번호에 따른 사원명
	// http://localhost:5050/dbAjax03?empno=1369	
	
	
	
	
	
	
	
	
}
