package web.com.springweb.a05_ajax.a02_service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.com.springweb.a05_ajax.a03_dao.A12_Dao;

@Service
public class A12_Service {
	@Autowired(required=false)
	private A12_Dao dao;
	
	
}
