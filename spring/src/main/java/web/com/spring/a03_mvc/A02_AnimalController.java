package web.com.spring.a03_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class A02_AnimalController {

	@Autowired(required=false)
	private A02_AnimalService service;
	
	// http://localhost:5052/getLocation
	// http://localhost:5052/getLocation?animalName=물소
	@GetMapping("getLocation")
	public String getLocation(@RequestParam(value="animalName", defaultValue = " ") String animalName,
							  Model d) {
		d.addAttribute("location", service.getLocation(animalName));
		
		return "WEB-INF\\views\\a03_mvc\\a02_animal.jsp";
	}
	
}
