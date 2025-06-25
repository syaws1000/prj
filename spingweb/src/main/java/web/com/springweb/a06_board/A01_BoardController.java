package web.com.springweb.a06_board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A01_BoardController {
	@Autowired(required=false)
	private A02_BoardService service;	
	
	// http://localhost:5050/boardList
	@GetMapping("boardList")
	public String boardList(BoardSch sch, Model d) {
		
		d.addAttribute("blist", service.getBoardList(sch));
		
		return "WEB-INF\\views\\a05_board\\a01_boardList.jsp";
	}
}
