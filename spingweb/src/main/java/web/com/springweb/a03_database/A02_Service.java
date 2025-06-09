package web.com.springweb.a03_database;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class A02_Service {

	// 생성된 컨테이너에 있는 자동객체 할당..
	@Autowired(required = false)
	private A03_Dao dao;
	
	
	public int getCountByDeptno(int deptno) {
		return dao.getCountByDeptno(deptno);
	}
	
}
