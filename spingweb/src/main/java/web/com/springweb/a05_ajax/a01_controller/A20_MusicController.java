package web.com.springweb.a05_ajax.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	// http://localhost:5050/getMusicAlumsView
	@GetMapping("getMusicAlumsView")
	public String getMusicAlumsView() {
		return "a02_ajax\\a20_musicAlbum.html";
	}
	// http://localhost:5050/insertAlbum
	@PostMapping("insertAlbum")
	public ResponseEntity<?> insertAlbum(MusicAlbums ins){
		return ResponseEntity.ok(service.insertAlbum(ins));
	}	
	// http://localhost:5050/getAlbum?albumId=1
	@GetMapping("getAlbum")
	public ResponseEntity<?> getAlbum(@RequestParam("albumId") int albumId){
		return ResponseEntity.ok(service.getAlbum(albumId));
	}	
	
	// 
	
	// http://localhost:5050/updateAlbum
	@PutMapping("updateAlbum")
	public ResponseEntity<?> updateAlbum(MusicAlbums upt){
		return ResponseEntity.ok(service.updateAlbum(upt));
	}		
	// http://localhost:5050/deleteAlbum
	@DeleteMapping("deleteAlbum")
	public ResponseEntity<?> deleteAlbum(@RequestParam("albumId") int albumId){
		return ResponseEntity.ok(service.deleteAlbum(albumId));
	}		
	
}
