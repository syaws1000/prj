package web.com.spring.a04_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class A02_HappyPetController {
	
	@Autowired(required=false)
	private A02_HappyPetService service;
	
	// http://localhost:5052/happyPet
	// http://localhost:5052/happyPet?specialAbility=사람 말 따라 하기
	@GetMapping("happyPet")
	public String happyPet(@RequestParam(value="specialAbility",defaultValue = "") String specialAbility, 
							Model d) {
		// petName
		d.addAttribute("petName", service.getPetname(specialAbility));
		return "WEB-INF\\views\\a04_mvc\\a02_happyPet.jsp";
	}

}
