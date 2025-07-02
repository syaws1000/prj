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
	@Value("${user.upload3}")
	private String path;
	
	@PostMapping("uploadexp100")
	public String uploadexp101(@RequestParam("report") MultipartFile report, Model d) {
		System.out.println("업로드한 파일:"+report.getOriginalFilename());
		String fname = report.getOriginalFilename();
		File f = new File(path,fname);
		String msg = "";
		try {
			report.transferTo(f);
			System.out.println("파일 등록 성공");
			msg = "파일 등록 성공";
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			msg = "[에러]상태:"+ e.getMessage();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			msg = "[에러]업로드:"+ e.getMessage();
		} catch (Exception e) {
			msg = "[에러]일반:"+ e.getMessage();
		}
		d.addAttribute("msg", msg);
		return "WEB-INF\\views\\a04_mvc\\a11_fileUploadExp.jsp";
	}
	
}
