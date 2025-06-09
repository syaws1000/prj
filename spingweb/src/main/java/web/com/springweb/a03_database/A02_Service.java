package web.com.springweb.a03_database;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class A02_Service {

	// 생성된 컨테이너에 있는 자동객체 할당..
	@Autowired(required = false)
	private A03_Dao dao;
	
	public void test() {
		//System.out.println("첫번째 - 입력값 deptno, 출력값 사원건수");
		//System.out.println("사원건수:"+ getCountByDeptno(10) );
		//System.out.println("부서(10)별 최대급여:"+getMxSalByDeptno(10));		
		System.out.println("관리자(7698)인 사원의 평균급여:"+getAvSalByMgr(7698));		
	}
	public double getMxSalByDeptno(int deptno) {
		return dao.getMxSalByDeptno(deptno);
	}
	public int getCountByDeptno(int deptno) {
		return dao.getCountByDeptno(deptno);
	}
	public double getAvSalByMgr(int mgr) {
		return dao.getAvSalByMgr(mgr);
	}
	
}
