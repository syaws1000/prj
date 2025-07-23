package web.com.springweb.a09_mail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class A02_MailService {
	// 컨테이너에 있는 메밀 발송 객체 로딩.(pom.xml에서 설정)
	@Autowired(required=false)
	private JavaMailSender sender;
	
	// 메일 발송 메서드..
	public String sendMail(MailDto email) {
		String msg="메일발송 성공";
		// 1. 메일 발송 데이터 전송을 위한 객체 생성..
		return msg;
	}
	
}
