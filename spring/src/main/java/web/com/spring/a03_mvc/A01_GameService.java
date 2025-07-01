package web.com.spring.a03_mvc;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class A01_GameService {
	
	@Autowired(required=false)
	private A01_GameDao dao;
	
	public int getScore(String playerName) {
		return dao.getScore(playerName);
	}
}
//ex)  A02_AnimalService.java  dao단 호출하여 처리해주세요..
