package web.com.springweb.a06_board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.servlet.http.HttpSession;
import web.com.springweb.vo.Member;

@Controller
public class A01_BoardController {
	@Autowired(required=false)
	private A02_BoardService service;	
	
	
	// http://localhost:5050/login
	@RequestMapping("login")
	public String login(Member mem, HttpSession sess, RedirectAttributes ra) {
		if(mem.getId()!=null) {
			Member smem = service.login(mem);
			if(smem!=null) {
				sess.setAttribute("mem", smem); // 세션으로 설정.
				ra.addFlashAttribute("msg","로그인 성공");
				return "redirect:/boardList";
			}
		}
		return "login.html";
	}
	
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
