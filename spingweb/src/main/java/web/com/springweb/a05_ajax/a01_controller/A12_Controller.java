package web.com.springweb.a05_ajax.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import web.com.springweb.a05_ajax.a02_service.A12_Service;

@Controller
public class A12_Controller {
	@Autowired(required=false)
	private A12_Service service;
	
	
	
}
