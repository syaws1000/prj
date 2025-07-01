package web.com.spring.a03_mvc;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface A01_GameDao {
	// null ==> 0으로 처리
	@Select("SELECT NVL( MAX(GAME_SCORE),0 )  FROM GAME_RANK WHERE PLAYER_NAME = #{playerName}")
	int getScore(@Param("playerName") String playerName);
}
