package web.com.springweb.a05_ajax.a03_dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface A12_Dao {
	@Select("SELECT EMPNO FROM EMP10 WHERE DEPTNO = #{deptno}")
	List<Integer> getEmpnosByDeptno( @Param("deptno") int deptno );

	@Select("SELECT ENAME FROM EMP10 WHERE SAL BETWEEN #{var1} AND #{var2}")
	List<String> getEnamesBySal( @Param("var1") double var1, @Param("var2") double var2  ); 

	@Select("SELECT SAL FROM EMP10 WHERE JOB = #{job}")
	List<Double> getSalsByJob(@Param("job")int job);

	@Select("SELECT ENAME FROM EMP10 WHERE MGR IN(#{mgr1}, #{mgr2})")
	List<String> getEnamesByMgr( @Param("mgr1") int mgr1, @Param("mgr2") int mgr2 );
}


