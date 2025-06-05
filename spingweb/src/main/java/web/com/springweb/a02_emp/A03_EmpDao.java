package web.com.springweb.a02_emp;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import web.com.springweb.a02_emp.vo.Emp;

@Mapper
public interface A03_EmpDao {
	@Select("SELECT * FROM EMP")
	List<Emp> empList();  // public 생략..
}
