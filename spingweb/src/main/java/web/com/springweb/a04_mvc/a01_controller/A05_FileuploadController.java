package web.com.springweb.a04_mvc.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import web.com.springweb.a04_mvc.a02_service.A05_FileuploadService;

@Controller
public class A05_FileuploadController {
	@Autowired(required=false)
	private A05_FileuploadService service;

	// http://localhost:5050/upload2
	@GetMapping("upload2")
	public String upload() {
		
		return "WEB-INF\\views\\a04_mvc\\a08_fileUpload.jsp";
	}	
	// 
	@PostMapping("upload2")
	public String upload(@RequestParam("reports") MultipartFile[] mfs, Model d) {
		
		d.addAttribute("msg", service.fileUploads(mfs));
		
		return "WEB-INF\\views\\a04_mvc\\a08_fileUpload.jsp";
	}
/*
	RequestMapping("upload2")
	public String upload(@RequestParam(value="reports", defaultValue = "") MultipartFile[] mfs, Model d) {
		
		if(mfs!=null && mfs[0].getOriginalFilename()!=null&& !mfs[0].getOriginalFilename().equals("") ) {
			d.addAttribute("msg", service.fileUploads(mfs));
		}
		return "WEB-INF\\views\\a04_mvc\\a08_fileUpload.jsp";
	}
 * */	
	
}
