package web.com.springweb.a03_database;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface A03_Dao {
	
	@Select("SELECT COUNT(*) FROM EMP10 WHERE DEPTNO = #{deptno} ")
	int getCountByDeptno(@Param("deptno") int deptno);
	
	@Select("SELECT MAX(SAL) FROM EMP10 WHERE DEPTNO = #{deptno}")
	double getMxSalByDeptno(@Param("deptno") int deptno);
	
	@Select("SELECT AVG(SAL) FROM EMP10 WHERE MGR = #{mgr}")
	double getAvSalByMgr(@Param("mgr") int mgr);
	
	@Select("SELECT ENAME FROM EMP10 WHERE SAL BETWEEN #{start} AND #{end}")                         
	List<String> getEnamesByStartEnd(@Param("start")int start, @Param("end")int end);
	
	@Select("SELECT SAL FROM EMP10 WHERE EMPNO BETWEEN #{start} AND #{end}")
	List<Double> getSals(@Param("start")int start, @Param("end")int end);	
	
}
