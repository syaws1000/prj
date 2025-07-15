package web.com.board.calendar;

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
	// msg와 list을 json 데이터로 처리..
	public CalDTO getCalendarMsgList(Calendar ins) {
		
		return new CalDTO(dao.insertCalendar(ins)>0?"등록성공":"등록실패", getCalendarList());
	}
	
}
