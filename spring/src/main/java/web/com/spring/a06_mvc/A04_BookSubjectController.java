package web.com.spring.a06_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import web.com.spring.vo.BookSubject;

@Controller
public class A04_BookSubjectController {
	
	@Autowired(required = false)
	private A04_BookSubjectService service;
	
	// http://localhost:5052/bookSubject
	@RequestMapping("bookSubject")  // get방식   post 방식 둘다 처리
	public String characters(BookSubject sch, Model d) {
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
	

}
