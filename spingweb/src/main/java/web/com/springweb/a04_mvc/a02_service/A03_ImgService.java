package web.com.springweb.a04_mvc.a02_service;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.com.springweb.a04_mvc.a03_dao.A03_ImgDao;
import web.com.springweb.vo.ImgDto;

@Service
public class A03_ImgService {
	@Autowired(required=false)
	private A03_ImgDao dao;
	
	public ImgDto getImg(int no) {
		return dao.getImg(no);
	}
}
