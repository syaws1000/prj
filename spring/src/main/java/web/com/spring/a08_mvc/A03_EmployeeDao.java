package web.com.spring.a08_mvc;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import web.com.spring.vo.Employee100;

@Mapper
public interface A03_EmployeeDao {
	@Insert("INSERT INTO employees100 values(employ100_seq.nextval,#{firstName},"
			+ "#{lastName},#{email},#{hireDate},#{salary})")
	int insertEmployee(Employee100 ins);
	
}
