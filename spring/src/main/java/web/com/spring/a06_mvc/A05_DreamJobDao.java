package web.com.spring.a06_mvc;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import web.com.spring.vo.GameCharacter;

@Mapper
public interface A05_DreamJobDao {
	@Select("SELECT * FROM GAME_CHARACTERS "
			+ "WHERE game LIKE #{game} AND ROLE LIKE #{role}")
	List<GameCharacter> getGameList(GameCharacter sch);	
	
}
