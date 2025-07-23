package web.com.springweb.a09_mail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class A01_MailController {
	
	@Autowired(required=false)
	private A02_MailService service;
	
	@Value("${spring.mail.username}")
	private String sender;
	
	
	
	@GetMapping("sendMail")
	public String sendMail() {
		return "WEB-INF\\views\\a04_mvc\\a20_mailForm.jsp";
	}
	

	
	@PostMapping("sendMail")
	public String sendMailPost(Model d) {
		d.addAttribute("sender", sender);
		//d.addAttribute("msg", )
		return "WEB-INF\\views\\a04_mvc\\a20_mailForm.jsp";
	}
	
}
