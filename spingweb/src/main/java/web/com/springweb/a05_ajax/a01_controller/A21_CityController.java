package web.com.springweb.a05_ajax.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import web.com.springweb.a05_ajax.a02_service.A21_CityService;
import web.com.springweb.a05_ajax.dto.City;

@Controller
public class A21_CityController {
	@Autowired(required=false)
	private A21_CityService service;
	
	// http://localhost:5050/cityList
	@GetMapping("cityList")
	public String cityList() {
		return "a02_ajax\\a21_cityView.html";
	}
	// http://localhost:5050/cityListVue
	@GetMapping("cityListVue")
	public String cityListVue() {
		return "b03_vue_axios\\a03_cityManager.html";
	}	
	// a05_ajax\a01_controller\A21_CityController.java
	// /getCityList /insertCity  /getCity /updateCity /deleteCity
	// http://localhost:5050/getCityList
	@GetMapping("getCityList")
	public ResponseEntity<?> getCityList(City sch) {

		return ResponseEntity.ok(service.getCityList(sch));
	}
	// http://localhost:5050/insertCity
	@PostMapping("insertCity")
	public ResponseEntity<?>  insertCity(City ins) {
		return  ResponseEntity.ok(service.insertCity(ins));
	}
	// http://localhost:5050/getCity
	@GetMapping("getCity")
	public ResponseEntity<?> getCity(int cityId) {
		return ResponseEntity.ok(service.getCity(cityId));
	}
	// http://localhost:5050/updateCity
	@PutMapping("updateCity")
	public ResponseEntity<?> updateCity(City upt) {
		return ResponseEntity.ok(service.updateCity(upt)) ;
	}
	// http://localhost:5050/deleteCity
	@DeleteMapping("deleteCity")
	public ResponseEntity<?> deleteCity(int cityId) {
		return ResponseEntity.ok(service.deleteCity(cityId));
	}	
}
