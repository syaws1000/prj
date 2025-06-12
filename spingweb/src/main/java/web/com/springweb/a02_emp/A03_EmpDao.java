package web.com.springweb.a02_emp;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import web.com.springweb.a02_emp.vo.Emp;

@Mapper
public interface A03_EmpDao {
	@Select("SELECT * FROM EMP "
			+ "WHERE ENAME LIKE #{ename} "  // sch.getEname()  %%   Emp( ename="%A%", job="%A%")
			+ "AND JOB LIKE #{job} "        // sch.getJob()   %%
			+ "ORDER BY EMPNO ")
	List<Emp> empList(Emp sch);  // public 생략..  Emp( ename="%A%", job="%A%")
	// 상속받아서, 연결/대화/결과/예외/자원해제 처리한 코드를 mybatis프렘임 웍에서
	// 실제 클래스와 객체를 생성..
	// 행/열데이터 List<Emp> 넘겨준다..
}
