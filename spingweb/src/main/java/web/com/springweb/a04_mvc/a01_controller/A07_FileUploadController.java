package web.com.springweb.a04_mvc.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import web.com.springweb.a04_mvc.a02_service.A07_FileUploadService;

@Controller
public class A07_FileUploadController {

	@Autowired(required=false)
	private A07_FileUploadService service;
	
	// http://localhost:5050/upload102
	@GetMapping("upload102")
	public String upload102() {
		return "WEB-INF\\views\\a04_mvc\\a12_fileUploadExp.jsp";
	}
	@PostMapping("upload102")
	public String upload103(@RequestParam("report") MultipartFile mf, Model d) {
		System.out.println("업로드 파일:"+mf.getOriginalFilename());
		d.addAttribute("msg", service.upload4(mf));
		return "WEB-INF\\views\\a04_mvc\\a12_fileUploadExp.jsp";
	}
	
}
