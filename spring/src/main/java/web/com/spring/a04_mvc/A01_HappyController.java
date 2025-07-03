package web.com.spring.a04_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class A01_HappyController {
	
	@Autowired(required=false)
	private A01_HappyService service;
	
	
	// http://localhost:5052/happy
	// http://localhost:5052/happy?activity=서핑 배우기
	@GetMapping("happy")
	public String happy( @RequestParam(value="activity", defaultValue="" ) String activity, Model d ) {
		d.addAttribute("destination", service.getDestination(activity));
		return "WEB-INF\\views\\a04_mvc\\a01_happy.jsp";
	}

}
