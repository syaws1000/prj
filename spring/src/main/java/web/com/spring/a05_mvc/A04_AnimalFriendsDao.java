package web.com.spring.a05_mvc;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import web.com.spring.vo.AnimalFriend;

@Mapper
public interface A04_AnimalFriendsDao {
	@Select("SELECT * FROM Animal_Friends WHERE friendship_type= #{friendshipType}")
	AnimalFriend getAnmialFriend(@Param("friendshipType") String friendshipType);
	
}
