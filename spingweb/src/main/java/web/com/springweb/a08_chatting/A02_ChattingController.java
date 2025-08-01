package web.com.springweb.a08_chatting;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A02_ChattingController {
	@Value("${socketServer}")
	private String socketServer;
	
	// http://192.168.0.135:5050/chatting
	// http://localhost:5050/chatting
	@GetMapping("chatting")
	public String chatting(Model d) {
		d.addAttribute("socketServer", socketServer);
		return "WEB-INF\\views\\a04_mvc\\a18_chatting.jsp";
	}
}
