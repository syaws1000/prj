package web.com.springweb.a04_mvc.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import web.com.springweb.a04_mvc.a02_service.A03_ImgService;

@Controller
public class A03_ImgController {
	@Autowired(required=false)
	private A03_ImgService service;
	
	// http://localhost:5050/getImg?no=1
	@GetMapping("getImg")
	public String getImg(@RequestParam("no") int no, Model d) {
		d.addAttribute("imgOb", service.getImg(no));
		
		return "WEB-INF\\views\\a04_mvc\\a10_imgForm.jsp";
	}	
}
