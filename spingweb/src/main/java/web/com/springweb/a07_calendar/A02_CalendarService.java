package web.com.springweb.a07_calendar;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class A02_CalendarService {
	@Autowired(required=false)
	private A03_CalendarDao dao;
	
	
	public List<Calendar> getCalendarList(){
		return dao.getCalendarList();
	}
	public CalDTO calInsert(Calendar ins) {
		return new CalDTO(dao.calInsert(ins)>0?"등록성공":"등록실패", getCalendarList()) ;
	}
	public CalDTO calUpdate(Calendar ins) {
		return new CalDTO(dao.calUpdate(ins)>0?"수정성공":"수정실패", getCalendarList()) ;
	}
	public CalDTO calDelete(int id) {
		return new CalDTO(dao.calDelete(id)>0?"삭제성공":"삭제실패", getCalendarList()) ;
	}	
	
}
