package web.com.spring.a06_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import web.com.spring.vo.GameCharacter;

@Controller
public class A03_GameCharacterController {
	
	@Autowired(required = false)
	private A03_GameCharacterService service;
	
	// http://localhost:5052/characters
	// http://localhost:5052/characters&name=루나&role=마법사  name="name" value="루나"  name="role" name="마법사"
	@RequestMapping("characters")  // get방식   post 방식 둘다 처리
	public String characters(GameCharacter sch, Model d) {
		d.addAttribute("charList", service.getGameList(sch));
		// 요청(입력) name, role 
		// 모델(출력) charList -   // id name game role powerLevel introduction lastUpdate
		return "WEB-INF\\views\\a06_mvc\\a03_gameCharacterList.jsp";
	}
	

}
