package web.com.springweb.a07_calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

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
	// http://localhost:5050/calInsert
	@PostMapping("calInsert")
	public ResponseEntity<?> calInsert(Calendar ins){
		return ResponseEntity.ok(service.insertCalendar(ins));
	}	
}
