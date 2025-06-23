package web.com.springweb.a05_ajax.a02_service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.com.springweb.a05_ajax.a03_dao.A12_Dao;

@Service
public class A12_Service {
	@Autowired(required=false)
	private A12_Dao dao;
	

	public List<Integer> getEmpnosByDeptno( int deptno ){
		return dao.getEmpnosByDeptno(deptno);
	}
	public List<String> getEnamesBySal(  double var1,double var2  ){
		return dao.getEnamesBySal(var1, var2);
	}
	public List<Double> getSalsByJob(String job){
		return dao.getSalsByJob(job);
	}

	public List<String> getEnamesByMgr( int mgr1,  int mgr2 ){
		return dao.getEnamesByMgr(mgr1, mgr2);
	}
	
}
