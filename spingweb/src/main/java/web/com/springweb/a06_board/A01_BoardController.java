package web.com.springweb.a06_board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	// http://localhost:5050/boardInsert
	// get방식과 post방식을 모두 사용 ==> RequestMapping
	@RequestMapping("boardInsert")
	public String boardInsert(Board ins, Model d) {
		
		if(ins.getSubject()!=null) {
			d.addAttribute("msg", service.insertBoard(ins));
		}
		return "WEB-INF\\views\\a05_board\\a02_boardInsert.jsp";
	}
	
}
