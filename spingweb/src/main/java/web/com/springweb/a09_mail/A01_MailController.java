package web.com.springweb.a09_mail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class A01_MailController {
	
	@Autowired(required=false)
	private A02_MailService service;
	
	@Value("${spring.mail.username}")
	private String sender;
	
	@ModelAttribute("sender")
	public String getSender() {
		return sender;
	}

	// http://localhost:5050/sendMail
	@GetMapping("sendMail")
	public String sendMail() {
		
		return "WEB-INF\\views\\a04_mvc\\a20_mailForm.jsp";
	}	
	
	@PostMapping("sendMail")
	public String sendMailPost(MailDto mail, Model d) {
		
		d.addAttribute("msg", service.sendMail(mail));
		
		return "WEB-INF\\views\\a04_mvc\\a20_mailForm.jsp";
	}
	

}
