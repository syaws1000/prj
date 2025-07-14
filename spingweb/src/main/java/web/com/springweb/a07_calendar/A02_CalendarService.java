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
}
