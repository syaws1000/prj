package web.com.springweb.a05_ajax.a03_dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface A01_Dao {
	@Select("SELECT COUNT(*) FROM EMP10")
	int getCountAllEmp();

	@Select("SELECT COUNT(*) FROM EMP10 WHERE DEPTNO = #{deptno}")
	int getCountByDeptno(@Param("deptno") int deptno);

	@Select("SELECT MAX(SAL) FROM EMP10 WHERE JOB = #{job}")
	double getMaxSalByJob( @Param("job") String job ); 

	@Select("SELECT ENAME FROM EMP10 WHERE EMPNO = #{empno}")
	String getEnameByEmpno(@Param("empno") int empno);
	

}
