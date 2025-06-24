package web.com.springweb.a05_ajax.a02_service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.com.springweb.a05_ajax.a03_dao.A21_CityDao;

@Service
public class A21_CityService {
	@Autowired(required = false)
	private A21_CityDao dao;
}
