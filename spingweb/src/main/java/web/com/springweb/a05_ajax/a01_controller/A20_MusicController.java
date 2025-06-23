package web.com.springweb.a05_ajax.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import web.com.springweb.a05_ajax.a02_service.A20_MusicService;
import web.com.springweb.a05_ajax.dto.MusicAlbums;

@Controller
public class A20_MusicController {
	@Autowired(required=false)
	private A20_MusicService service;

	// http://localhost:5050/getMusicAlums
	@GetMapping("getMusicAlums")
	public ResponseEntity<?> getMusicAlums(MusicAlbums sch){
		return ResponseEntity.ok(service.getMusicAlums(sch));
	}
	
}
