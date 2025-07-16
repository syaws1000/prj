package web.com.spring.a06_mvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.com.spring.vo.DreamJob;
import web.com.spring.vo.GameCharacter;

@Service
public class A05_DreamJobService {
	@Autowired(required=false)
	private A05_DreamJobDao dao;
	
	public List<DreamJob> getDreamJobs(DreamJob sch){
		// 초기 전체 검색.. JobType JobBenefit
		if(sch.getJobType()==null) sch.setJobType("");
		if(sch.getJobBenefit()==null) sch.setJobBenefit("");
		
		// 키워드 검색이 가능하게 설정..
		sch.setJobType("%"+sch.getJobType()+"%");
		sch.setJobBenefit("%"+sch.getJobBenefit()+"%");		
		
		return dao.getDreamJobs(sch);
	}

}
