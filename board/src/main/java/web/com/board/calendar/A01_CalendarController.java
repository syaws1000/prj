package web.com.board.calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A01_CalendarController {
	@Autowired(required=false)
	private A02_CalendarService service;
	
	// http://localhost:5051/calendar
	@GetMapping("calendar")
	public String calendar() {
		return "a01_calendar.html";
	}
	// http://localhost:5051/calList
	@GetMapping("calList")
	public ResponseEntity<?> getCalList(){
		return ResponseEntity.ok(service.getCalendarList());
	}
}
