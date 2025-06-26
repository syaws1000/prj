package web.com.board.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A01_Controller {
	@Autowired(required=false)
	private A02_Service service;
	
	// http://localhost:5051/boardList
	@GetMapping("boardList")
	public String boardList(AnnounceSch sch, Model d ) {
		d.addAttribute("list", service.getAnnounceList(sch));
		return "WEB-INF\\views\\a01_BoardList.jsp";
	}

}
