package web.com.springweb.a05_ajax.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import web.com.springweb.a05_ajax.a02_service.A21_CityService;

@Controller
public class A21_CityController {
	@Autowired(required=false)
	private A21_CityService service;
	
	// http://localhost:5050/cityList
	@GetMapping("cityList")
	public String cityList() {
		return "a02_ajax\\a21_cityView.html";
	}
}
