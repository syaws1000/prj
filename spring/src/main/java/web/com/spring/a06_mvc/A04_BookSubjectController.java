package web.com.spring.a06_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import web.com.spring.vo.BookSubject;

@Controller
public class A04_BookSubjectController {
	
	@Autowired(required = false)
	private A04_BookSubjectService service;
	
	// A02_SuperFoodController A04_BookSubjectController
	
	// http://localhost:5052/bookSubject
	@RequestMapping("bookSubject")  // get방식   post 방식 둘다 처리
	public String bookSubject(BookSubject sch, Model d) {
		d.addAttribute("books", service.getBookSubject(sch));
		
		return "WEB-INF\\views\\a06_mvc\\a04_bookSubjectList.jsp";
	}
	// http://localhost:5052/insertBookSubject
	@RequestMapping("insertBookSubject")  // get방식   post 방식 둘다 처리
	public String insertBookSubject(BookSubject ins, Model d) {
		if(ins.getSubject()!=null) {
			d.addAttribute("msg", service.insertBookSubject(ins));
		}
		
		return "WEB-INF\\views\\a06_mvc\\a04_bookSubjectInsert.jsp";
	}	
	// http://localhost:5052/detailBookSubject?bookId=1
	@GetMapping("detailBookSubject")
	public String detailBookSubject(@RequestParam("bookId") int bookId, Model d) {
		d.addAttribute("bk", service.getBook(bookId));
		return "WEB-INF\\views\\a06_mvc\\a04_bookSubjectDetail.jsp";
	}
	// a04_bookSubjectDetail.jsp;
	// http://localhost:5052/updateBookSubject
	@PostMapping("updateBookSubject")  // Post
	public String updateBookSubject(BookSubject upt, Model d) {
		d.addAttribute("msg", service.updateBookSubject(upt));
		
		d.addAttribute("bk", service.getBook(upt.getBookId()));
		return "WEB-INF\\views\\a06_mvc\\a04_bookSubjectDetail.jsp";
	}	
	// http://localhost:5052/deleteBookSubject
	@PostMapping("deleteBookSubject")  // Post
	public String deleteBookSubject(@RequestParam("bookId") int bookId, Model d) {
		d.addAttribute("msg", service.deleteBookSubject(bookId));

		return "WEB-INF\\views\\a06_mvc\\a04_bookSubjectDetail.jsp";
	}		
	
}
