package web.com.springweb.a11_chart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class A01_ChartController {
	@Autowired(required=false)
	private A02_ChartService service;
	
	// http://localhost:5050/chart
	@GetMapping("chart")
	public String chart() {
		return "a05_chart\\charts.html";
	}
	// http://localhost:5050/chartJson?type=area
	@GetMapping("chartJson")
	public ResponseEntity<?> chartJson(@RequestParam("type") String type){
		return ResponseEntity.ok(service.getChart(type));
	}
}
