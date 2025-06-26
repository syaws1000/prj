package web.com.springweb.a04_mvc.a01_controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class A04_FileUploadController {
	
	// http://localhost:5050/fileUp
	@GetMapping("fileUp")
	public String fileUp() {
		return "WEB-INF\\views\\a04_mvc\\a07_fileUpload.jsp";
	}
	
	// MultipartFile : 네트워크에서 직렬화방식으로 파일을 스트림으로 가져올 수 있는 객체..
	// http://localhost:5050/upload
	@PostMapping("upload")
	public String upload(@RequestParam("report") MultipartFile mf) {
		System.out.println("업로드한 파일명:"+mf.getOriginalFilename());
		return "WEB-INF\\views\\a04_mvc\\a07_fileUpload.jsp";
	}
}
