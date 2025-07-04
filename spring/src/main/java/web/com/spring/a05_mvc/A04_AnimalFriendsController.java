package web.com.spring.a05_mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class A04_AnimalFriendsController {
	
	// http://localhost:5052/animalFriendDetail
	// http://localhost:5052/animalFriendDetail?friendshipType=토끼와 친구
	// friendshipType  요청값,   animal 모델 처리..
	@GetMapping("animalFriendDetail")
	public String animalFriend(@RequestParam(value="friendshipType", defaultValue = "") String friendshipType,
								Model d) {
		d.addAttribute("animal", "동물 정보들!!");
		
		return "WEB-INF\\views\\a05_mvc\\a04_animalFriend.jsp";
	}
	
	

}
