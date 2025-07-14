package web.com.springweb.a07_calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A01_CalendarController {
	
	@Autowired(required=false)
	private A02_CalendarService service;

	// http://localhost:5050/calendar
	@GetMapping("calendar")
	public String getCalendar() {
		return "a03_calendar\\calendar.html";
	}
	
	// http://localhost:5050/calList
	@GetMapping("calList")
	public ResponseEntity<?> calList(){
		return ResponseEntity.ok(service.getCalendarList());
	}
}
