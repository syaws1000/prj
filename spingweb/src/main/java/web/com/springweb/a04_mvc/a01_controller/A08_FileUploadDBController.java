package web.com.springweb.a04_mvc.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import web.com.springweb.a04_mvc.a02_service.A08_FileUploadDBService;
import web.com.springweb.a06_board.Board;

@Controller
public class A08_FileUploadDBController {
	// autowiring 처리...
	@Autowired(required=false)
	private A08_FileUploadDBService service;
	
	// 등록할 화면 로딩(get)  insertUploadDB01
	// http://localhost:5050/insertUploadDB01
	@GetMapping("insertUploadDB01")
	public String insertUploadDB01() {
		return "WEB-INF\\views\\a04_mvc\\a13_insertFileDB.jsp";
	}
	
	// 등록할 내용 처리 및 메시지처리(post)
	@PostMapping("insertUploadDB01")
	public String insertUploadDB01(Board ins, Model d) {
		d.addAttribute("msg", service.insertBoardexp01(ins));
		return "WEB-INF\\views\\a04_mvc\\a13_insertFileDB.jsp";
	}	
	// "WEB-INF\\views\\a04_mvc\\a08_fileUpload.jsp"
	// http://localhost:5050/detailUpFile01?no=1
	@GetMapping("detailUpFile01")
	public String detailUpFile01(@RequestParam("no") int no) {
		return "WEB-INF\\views\\a04_mvc\\a16_detailFileDB.jsp";
	}
	
	
	
	
}
