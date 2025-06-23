package web.com.springweb.a05_ajax.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import web.com.springweb.a05_ajax.a02_service.A12_Service;

@Controller
public class A12_Controller {
	@Autowired(required=false)
	private A12_Service service;
	
	// http://localhost:5050/getEmpnosByDeptno?deptno=10
	@GetMapping("getEmpnosByDeptno")
	public ResponseEntity<?> getEmpnosByDeptno(@RequestParam("deptno") int deptno){
		
		return ResponseEntity.ok(service.getEmpnosByDeptno(deptno));
	}
	//  http://localhost:5050/getEnamesBySalView
	@GetMapping("getEnamesBySalView")
	public String getEnamsBySalView() {
		return "a02_ajax\\getEnamesBySalView.html";
	}
	
	
	// http://localhost:5050/getEnamesBySal?var1=1000&var2=2000
	@GetMapping("getEnamesBySal")
	public ResponseEntity<?> getEnamesBySal(  @RequestParam("var1") double var1, @RequestParam("var2")  double var2  ){
		
		return ResponseEntity.ok(service.getEnamesBySal(var1, var2));
	}
	// http://localhost:5050/getEmpnosByDeptno?job=SALESMAN
	@GetMapping("getSalsByJob")
	public ResponseEntity<?> getSalsByJob(@RequestParam("job") String job){
		
		return ResponseEntity.ok(service.getSalsByJob(job));
	}
	// http://localhost:5050/getEnamesByMgr?mgr1=7902&mgr2=7698
	@GetMapping("getEnamesByMgr")
	public ResponseEntity<?> getEnamesByMgr(@RequestParam("mgr1") int mgr1, @RequestParam("mgr2") int mgr2 ){
		
		return ResponseEntity.ok(service.getEnamesByMgr(mgr1, mgr2));
	}	
	
}
