package web.com.springweb.a03_database;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import web.com.springweb.a03_database.vo.Dept;
import web.com.springweb.a03_database.vo.Emp;
import web.com.springweb.a03_database.vo.GameCharacter;
import web.com.springweb.a03_database.vo.Movie;
import web.com.springweb.vo.Emp09;

@Mapper
public interface A03_Dao {
	
	@Select("SELECT COUNT(*) FROM EMP10 WHERE DEPTNO = #{deptno} ")
	int getCountByDeptno(@Param("deptno") int deptno);
	
	@Select("SELECT MAX(SAL) FROM EMP10 WHERE DEPTNO = #{deptno}")
	double getMxSalByDeptno(@Param("deptno") int deptno);
	
	@Select("SELECT AVG(SAL) FROM EMP10 WHERE MGR = #{mgr}")
	double getAvSalByMgr(@Param("mgr") int mgr);
	
	@Select("SELECT ENAME FROM EMP10 WHERE SAL BETWEEN #{start1} AND #{end}")                         
	List<String> getEnamesByStartEnd(@Param("start1")int start, @Param("end")int end);
	
	@Select("SELECT SAL FROM EMP10 WHERE EMPNO BETWEEN #{start} AND #{end}")
	List<Double> getSals(@Param("start")int start, @Param("end")int end);	

	@Select("SELECT HIREDATE FROM EMP10 WHERE JOB = #{job} OR DEPTNO = #{deptno}")
	List<Date> getHiredate(@Param("job")String job, @Param("deptno")int deptno);	
	
	@Select("SELECT * FROM EMP10 WHERE empno = #{empno}")
	Emp getEmp(@Param("empno") int empno);
	
	@Select("SELECT * FROM MOVIES WHERE MOVIE_ID=#{movieId}")
	Movie getMovie(@Param("movieId") int movieId);
	
	@Select("SELECT ENAME, JOB, SAL FROM EMP10 WHERE DEPTNO = #{deptno}")
	List<Emp09> getdeptno(@Param("deptno")int deptno);
	
	@Select("SELECT * FROM EMP WHERE ENAME LIKE #{ename} AND JOB LIKE #{job}")	  
	List<Emp> getEmpList(@Param("ename") String ename, @Param("job") String job);	  						
	
	@Select("SELECT * FROM game_characters WHERE NAME LIKE #{name} AND GAME LIKE #{game}")
	List<GameCharacter> getGameCharacters(@Param("name")String name, @Param("game")String game);

	@Insert("INSERT INTO DEPT01(DNAME) VALUES(#{dname})")
	int insertDept(@Param("dname") String dname);
	
	@Insert("INSERT INTO EMP01(JOB) VALUES(#{job})")
	int insertEmp01(@Param("job") String job);
	
	@Insert("INSERT INTO DEPT01(DEPTNO, DNAME, LOC) VALUES(#{deptno},#{dname},#{loc})")
	int insertDept01(@Param("deptno")int deptno, @Param("dname")String dname, @Param("loc")String loc );

	@Insert("INSERT INTO DEPT01(DEPTNO, DNAME, LOC) VALUES(#{deptno},#{dname},#{loc})")
	int insert2Dept01(Dept ins);	
	
	@Insert("INSERT INTO EMP01(EMPNO, ENAME, JOB, DEPTNO, SAL) VALUES(#{empno},#{ename},#{job},#{deptno},#{sal})")
	int insert2Emp01(@Param("empno")int empno, @Param("ename")String ename, @Param("job")String job, 
					@Param("deptno")int deptno, @Param("sal")double sal);
	
	@Insert("INSERT INTO EMP01(EMPNO, ENAME, JOB, DEPTNO, SAL) VALUES(#{empno},#{ename},#{job},#{deptno},#{sal})")
	int insert3Emp01(Emp ins);
	
	
}
