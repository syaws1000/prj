package web.com.spring.a05_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class A04_AnimalFriendsController {
	
	@Autowired(required=false)
	private A04_AnimalFriendsService service;
	
	// http://localhost:5052/animalFriendDetail
	// http://localhost:5052/animalFriendDetail?friendshipType=토끼와 친구
	// friendshipType  요청값,   animal 모델 처리..
	@GetMapping("animalFriendDetail")
	public String animalFriend(@RequestParam(value="friendshipType", defaultValue = " ") String friendshipType,
								Model d) {
		// animal으로 객체가 모델 데이터 설정.. // animalId  animalName friendshipType
		// ${ani.animalId}   ==   ${ani.getAnimalId()}
		// ${ani.animalName}   ==   ${ani.getAnimalName()}
		// ${ani.friendshipType}   ==   ${ani.getfriendshipType()}
		
		/// 친구 유형[    ] [검색] ==>
		// 객체로 속성가진 여러 데이터를 출력..${ani.animalId} ${ani.animalName} ${ani.friendshipType} 
		
		d.addAttribute("ani", service.getAnmialFriend(friendshipType) );
		
		return "WEB-INF\\views\\a05_mvc\\a04_animalFriend.jsp";
	}
	
	

}
