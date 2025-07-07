package web.com.springweb.a06_board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;
import web.com.springweb.vo.Member;

@Controller
public class A01_BoardController {
	@Autowired(required=false)
	private A02_BoardService service;	

	
	// http://localhost:5050/logout
	@GetMapping("logout")	
	public String logout( HttpSession sess) {
		sess.removeAttribute("mem"); // mem 세션 삭제, 다시 로그인 화면 이동 처리..
		return "redirect:/login";
	}
	
	// http://localhost:5050/login
	@RequestMapping("login")
	public String login(Member mem, HttpSession sess, Model d//, RedirectAttributes ra
						) {
		if(mem.getId()!=null) { // 입력값에 따라서 로그인 데이터 여부 확인 처리..
			Member smem = service.login(mem);
			if(smem!=null) { // 해당 데이터가 있는 경우..
				sess.setAttribute("mem", smem); // 세션으로 설정.
				//ra.addFlashAttribute("msg","로그인 성공");
				d.addAttribute("msg","로그인 성공");

			}else {
				d.addAttribute("msg","로그인 실패");
			}
			
		}
		return "WEB-INF\\views\\a05_board\\a00_login.jsp";
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
	// boardUpdate boardDelete
	@PostMapping("boardUpdate")
	public String boardUpdate(Board upt, Model d) {
		d.addAttribute("msg", service.updateBoard(upt));
		d.addAttribute("board", service.getBoard(upt.getNo()));
		return "WEB-INF\\views\\a05_board\\a03_boardDetail.jsp";
	}	
	@PostMapping("boardDelete")
	public String boardDelete(@RequestParam("no") int no, Model d) {
		d.addAttribute("msg", service.deleteBoard(no));
		return "WEB-INF\\views\\a05_board\\a03_boardDetail.jsp";
	}		
	
	// http://localhost:5050/boardDetail?no=8
	@GetMapping("boardDetail")
	public String boardDetail(@RequestParam("no") int no, Model d) {
		// 기본 정보	
		d.addAttribute("board", service.getDetail(no));
		// 파일 리스트 정보..
		d.addAttribute("bfiles", service.getFile(no));
		
		return "WEB-INF\\views\\a05_board\\a03_boardDetail.jsp";
	}	
	
	
}
