package web.com.springweb.a04_mvc.a01_controller;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class A06_FileUploadController {

	// http://localhost:5050/uploadexp100
	@GetMapping("uploadexp100")
	public String uploadexp100() {
		return "WEB-INF\\views\\a04_mvc\\a11_fileUploadExp.jsp";
	}

	@PostMapping("uploadexp100")
	public String uploadexp101(@RequestParam("report") MultipartFile report, Model d) {
		System.out.println("업로드한 파일:"+report.getOriginalFilename());

		d.addAttribute("msg", "");
		return "WEB-INF\\views\\a04_mvc\\a11_fileUploadExp.jsp";
	}
	
}
