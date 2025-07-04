package web.com.springweb.a04_mvc.a02_service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.com.springweb.a04_mvc.a03_dao.A11_DetailDownDao;
import web.com.springweb.a04_mvc.a04_vo.Announce;

@Service
public class A11_DetailDownService {

	@Autowired(required=false)
	private A11_DetailDownDao dao;
	
	public Announce getAnnounce(  int boardId ) {
		
		return dao.getAnnounce(boardId);
	}
	public List<String> getAnnounceFile( int no){
		return dao.getAnnounceFile(no);
	}
	/*
	Announce getAnnounce(  int boardId );
	List<String> getAnnounceFile( int no);
	 * */
}
