package web.com.springweb.a04_mvc.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import web.com.springweb.a04_mvc.a02_service.A09_UploadDownService;
import web.com.springweb.a06_board.Board;

@Controller
public class A09_UploadAndDownLoadController {
	@Autowired(required=false)
	private A09_UploadDownService service;
	
	// Get/Post
	// http://localhost:5050/uploadDownload
	@RequestMapping("uploadDownload")
	public String uploadDownload(Board up, Model d) {
		
		if(up.getReports()!=null) {
			d.addAttribute("msg", service.upload4(up.getReports()));
		}
		d.addAttribute("flist", service.getFnames());
		
		return "WEB-INF\\views\\a04_mvc\\a14_uploadDown.jsp";
	}
	

}
