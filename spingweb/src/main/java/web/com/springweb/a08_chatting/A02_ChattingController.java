package web.com.springweb.a08_chatting;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A02_ChattingController {
	@Value("${socketServer}")
	private String socketServer;
	
	// http://localhost:5050/chatting
	@GetMapping("chatting")
	public String chatting(Model d) {
		return "WEB-INF\\views\\a04_mvc\\a18_chatting.jsp";
	}
}
