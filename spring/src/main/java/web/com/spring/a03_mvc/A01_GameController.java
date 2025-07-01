package web.com.spring.a03_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class A01_GameController {
	@Autowired(required=false)
	private A01_GameService service;
	
	// 아래 두가자 url을 모두다 처리해준다.
	// http://localhost:5052/getScore
	// http://localhost:5052/getScore?gameName=앨리스
	@GetMapping("getScore")
	public String getScore(@RequestParam(value="gameName", defaultValue = "") String gameName,
			              Model d) {
		// gameName이라는 요청값이 있을 때는 해당 이름을 할당하고, 없을 때는 ""를 gameName에 할당한다.
		if(!gameName.equals(""))
			d.addAttribute("gameScore", service.getScore(gameName));// 임의로 초기화면을 보이기 위해..
		return "WEB-INF\\views\\a03_mvc\\a01_gameScoreView.jsp";
	}
}
