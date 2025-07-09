package web.com.spring.a06_mvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.com.spring.vo.BookSubject;
import web.com.spring.vo.GameCharacter;

@Service
public class A04_BookSubjectService {
	@Autowired(required=false)
	private A04_BookSubjectDao dao;
	
	public List<BookSubject> getBookSubject(BookSubject sch){
		// 초기 전체 검색..
		if(sch.getSubject()==null) sch.setSubject("");
		if(sch.getAuthor()==null) sch.setAuthor("");
		
		// 키워드 검색이 가능하게 설정..
		sch.setSubject("%"+sch.getSubject()+"%");
		sch.setAuthor("%"+sch.getAuthor()+"%");
		
		
		return dao.getBookSubject(sch);
	}
	public String insertBookSubject(BookSubject ins) {
		return dao.insertBookSubject(ins)>0?"등록성공":"등록실패";
	}
}
