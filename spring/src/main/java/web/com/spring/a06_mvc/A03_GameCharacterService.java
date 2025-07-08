package web.com.spring.a06_mvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.com.spring.vo.GameCharacter;

@Service
public class A03_GameCharacterService {
	@Autowired(required=false)
	private A03_GameCharacterDao dao;
	
	public List<GameCharacter> getGameList(GameCharacter sch){
		// 초기 전체 검색..
		if(sch.getGame()==null) sch.setGame("");
		if(sch.getRole()==null) sch.setRole("");
		
		// 키워드 검색이 가능하게 설정..
		sch.setGame("%"+sch.getGame()+"%");
		sch.setRole("%"+sch.getRole()+"%");
		
		
		return dao.getGameList(sch);
	}

}
