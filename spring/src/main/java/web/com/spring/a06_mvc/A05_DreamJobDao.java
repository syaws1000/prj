package web.com.spring.a06_mvc;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import web.com.spring.vo.DreamJob;

@Mapper
public interface A05_DreamJobDao {
	// jobType jobBenefit
	@Select("SELECT * FROM Dream_Jobs WHERE job_type = #{jobType} AND job_benefit =  #{jobBenefit}")
	List<DreamJob> getDreamJobs(DreamJob sch);
	
}
