package web.com.springweb.a07_calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		return ResponseEntity.ok(service.calInsert(ins));
	}	
	// http://localhost:5050/calUpdate
	@PostMapping("calUpdate")
	public ResponseEntity<?> calUpdate(Calendar upt){
		return ResponseEntity.ok(service.calUpdate(upt));
	}	
	// http://localhost:5050/calDelete
	@PostMapping("calDelete")
	public ResponseEntity<?> calDelete(@RequestParam("id") int id){
		return ResponseEntity.ok(service.calDelete(id));
	}		
}
