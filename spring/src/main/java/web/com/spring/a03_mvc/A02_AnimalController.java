package web.com.spring.a03_mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class A02_AnimalController {

	// http://localhost:5052/getLocation
	// http://localhost:5052/getLocation?animalName=물소
	@GetMapping("getLocation")
	public String getLocation(@RequestParam(value="animalName", defaultValue = "") String animalName,
							  Model d) {
		d.addAttribute("location", "아프리카");
		
		return "WEB-INF\\views\\a03_mvc\\a02_animal.jsp";
	}
	
}
