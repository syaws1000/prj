package web.com.board.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class A01_Controller {
	@Autowired(required=false)
	private A02_Service service;
	
	
	// http://localhost:5051/login    (GET방식/POST방식)
	@RequestMapping("login")
	public String login(Member login, HttpSession session, Model d) {
		if(login.getId()!=null) {
			Member mem = service.login(login);
			if(mem!=null) {
				d.addAttribute("msg", "로그인 성공");
				session.setAttribute("mem", mem);
			}else {
				d.addAttribute("msg", "로그인 실패");
			}
		}
		return "WEB-INF\\views\\a00_login.jsp";
	}
	
	
	
	// http://localhost:5051/boardList
	@GetMapping("boardList")
	public String boardList(AnnounceSch sch, Model d ) {
		d.addAttribute("list", service.getAnnounceList(sch));
		return "WEB-INF\\views\\a01_BoardList.jsp";
	}
	// http://localhost:5051/boardDetail?boardId = 7
	@GetMapping("boardDetail")
	public String boardDetail(@RequestParam("boardId") int boardId, 
							  Model d ) {
		
		d.addAttribute("board", service.detailAnnount(boardId));
		d.addAttribute("bfiles", service.getFile(boardId));
		return "WEB-INF\\views\\a03_BoardDetail.jsp";
	}
	
	
	
	// http://localhost:5051/boardInsert
	@RequestMapping("boardInsert")
	public String boardInsert(Announce ins, Model d) {
		if(ins.getTitle()!=null) {
			d.addAttribute("msg", service.insertAnnounce(ins));
		}
		return "WEB-INF\\views\\a02_BoardInsert.jsp";
	}
	// http://localhost:5051/boardUpdate
	@PostMapping("boardUpdate")
	public String boardUpdate(Announce upt, Model d) {
		d.addAttribute("msg", service.updateBoard(upt));
		d.addAttribute("board", service.getAnnounce(upt.getBoardId()));
		d.addAttribute("bfiles", service.getFile(upt.getBoardId()));		
		return "WEB-INF\\views\\a03_BoardDetail.jsp";
	}	
	
	// http://localhost:5051/boardDelete
	@PostMapping("boardDelete")
	public String boardDelete(@RequestParam("boardId") int boardId, Model d) {
		d.addAttribute("msg", service.deleteBoard(boardId));	
		return "WEB-INF\\views\\a03_BoardDetail.jsp";
	}	

	
}
