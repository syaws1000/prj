package web.com.springweb.a05_ajax.a02_service;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.com.springweb.a05_ajax.a03_dao.A11_Dao;

@Service
public class A11_Service {
	@Autowired(required=false)
	private A11_Dao dao;
	
	public int getCountByDeptno(int deptno) {
		return dao.getCountByDeptno(deptno);
	}
	// dao 메서드 호출
	public double getMaxSalByJob( String job ) {
		return dao.getMaxSalByJob(job);
	}
	public String getEnameByEmpno(@Param("empno") int empno){
		return dao.getEnameByEmpno(empno);
	}
}
