package web.com.springweb.a04_mvc.a01_controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class A07_FileUploadController {

	// http://localhost:5050/upload102
	@GetMapping("upload102")
	public String upload102() {
		return "WEB-INF\\views\\a04_mvc\\a12_fileUploadExp.jsp";
	}
	@PostMapping("upload102")
	public String upload103(@RequestParam("report") MultipartFile mf, Model d) {
		System.out.println("업로드 파일:"+mf.getOriginalFilename());
		d.addAttribute("msg", "업로드 성공");
		return "WEB-INF\\views\\a04_mvc\\a12_fileUploadExp.jsp";
	}
	
}
