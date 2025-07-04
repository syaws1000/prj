package web.com.springweb.a04_mvc.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import web.com.springweb.a04_mvc.a02_service.A11_DetailDownService;

@Controller
public class A11_DetailDownController {
	
	@Autowired(required = false)
	private A11_DetailDownService service;

	// http://localhost:5050/detailAnnounce?boardId=12
	@GetMapping("detailAnnounce")
	public String detailAnnounce(@RequestParam("boardId") int boardId, Model d) {
		d.addAttribute("ann", service.getAnnounce(boardId));
		d.addAttribute("fnames", service.getAnnounceFile(boardId));
		
		
		
		return "WEB-INF\\views\\a04_mvc\\a17_detail.jsp";
	}
}
