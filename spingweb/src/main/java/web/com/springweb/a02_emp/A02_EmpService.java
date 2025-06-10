package web.com.springweb.a02_emp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.com.springweb.a02_emp.vo.Emp;

@Service
public class A02_EmpService {
	@Autowired(required=false)   // 자동을 객체를 붙여주는 역할...(컨테이너에 해당 타입이 있으면 할당)
	private A03_EmpDao dao;  // spring 컨테이너 객체끼리 자동 할당하기 new XXXX() 필요없음
	// DI(dependency injection) - 제어권을 사람/개발자가 new XXX()로 생성해서 할당하는 것이 아니라 컨테이너에 맡김
	
	public List<Emp> empList(Emp sch){
		// 비지니스(알고리즈 처리시 해야할 코드)...
		// 초기화면에 전체 키워드검색
		if(sch.getEname()==null) sch.setEname("");
		if(sch.getJob()==null) sch.setJob("");
		sch.setEname("%"+sch.getEname()+"%");
		sch.setJob("%"+sch.getJob()+"%");
		
		return dao.empList(sch);
	}
}
