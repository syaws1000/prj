package web.com.springweb.a03_database;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface A03_Dao {
	
	@Select("SELECT COUNT(*) FROM EMP10 WHERE DEPTNO = #{deptno} ")
	int getCountByDeptno(@Param("deptno") int deptno);

}
