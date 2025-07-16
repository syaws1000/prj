package web.com.spring.a06_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import web.com.spring.vo.DreamJob;

@Controller
public class A05_DreamJobController {
	
	@Autowired(required = false)
	private A05_DreamJobService service;
	
	// http://localhost:5052/dreamJobs
	@RequestMapping("dreamJobs")  // get방식   post 방식 둘다 처리
	public String characters(DreamJob sch, Model d) {
		d.addAttribute("list", service.getDreamJobs(sch));
		// 요청(입력) name, role 
		// 모델(출력) charList -   // id name game role powerLevel introduction lastUpdate
		return "WEB-INF\\views\\a06_mvc\\a05_dreamJobList.jsp";
	}
	

}
