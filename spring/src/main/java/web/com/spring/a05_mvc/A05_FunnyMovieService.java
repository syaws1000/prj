package web.com.spring.a05_mvc;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.com.spring.vo.FunnyMovie;

@Service
public class A05_FunnyMovieService {
	@Autowired(required=false)
	private A05_FunnyMovieDao dao;
	
	public FunnyMovie getFunnyMovie(String laughPoints){
		return dao.getFunnyMovie(laughPoints);
	}
}
