package web.com.springweb.a04_mvc.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import web.com.springweb.a04_mvc.a02_service.A10_UploadDownSrv;
import web.com.springweb.a06_board.Board;


@Controller
public class A10_UpDownCtrl {

	// C:\Users\USER\git\prj\spingweb\src\main\webapp\WEB-INF\z05_upload
	/*
	webapp\WEB-INF\z05_upload
	a00_config/FileDownloadController3.java   downFile=파일명
	A10_UpDownCtrl.java
	A10_UpDownServ.java
	a15_updownload.jsp



	 * */	 
	@Autowired(required=false)
	private A10_UploadDownSrv service;
	
	
	// Get/Post
	// http://localhost:5050/uploadDownload3
	@RequestMapping("uploadDownload3")
	public String uploadDownload(Board up, Model d) {
		
		if(up.getReports()!=null) {
			d.addAttribute("msg", service.upload4(up.getReports()));
		}
		d.addAttribute("flist", service.getFnames());
		
		return "WEB-INF\\views\\a04_mvc\\a15_uploadDown.jsp";
	}
	
	
		
	
}
