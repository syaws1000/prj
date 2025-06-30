package web.com.springweb.a04_mvc.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import web.com.springweb.a04_mvc.a02_service.A04_FileService;

@Controller
public class A04_FileUploadController {
	
	@Autowired(required = false)
	private A04_FileService service;
	
	
	// http://localhost:5050/fileUp
	@GetMapping("fileUp")
	public String fileUp(Model d) {
		d.addAttribute("fnames", service.getFnames());
		return "WEB-INF\\views\\a04_mvc\\a07_fileUpload.jsp";
	}
	
	// MultipartFile : 네트워크에서 직렬화방식으로 파일을 스트림으로 가져올 수 있는 객체..
	// http://localhost:5050/upload
	@PostMapping("upload")
	public String upload(@RequestParam("report") MultipartFile mf, Model d) {
		System.out.println("업로드한 파일명:"+mf.getOriginalFilename());
		d.addAttribute("msg", service.upload(mf));
		d.addAttribute("fnames", service.getFnames());
		
		return "WEB-INF\\views\\a04_mvc\\a07_fileUpload.jsp";
	}
}
// A05_FileuploadController.java
// fileUp2  upload2
// WEB-INF\\views\\a04_mvc\\a08_fileUpload.jsp
// user.upload2=C:\\Users\\USER\\git\\prj\\spingweb\\src\\main\\webapp\\z02_upload
