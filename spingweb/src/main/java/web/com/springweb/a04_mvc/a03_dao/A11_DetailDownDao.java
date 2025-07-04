package web.com.springweb.a04_mvc.a03_dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import web.com.springweb.a04_mvc.a04_vo.Announce;

@Mapper
public interface A11_DetailDownDao {
	@Select("SELECT * FROM ANNOUNCE WHERE BOARD_ID =#{boardId}")
	Announce getAnnounce( @Param("boardId") int boardId );
	

	@Select("SELECT fname FROM ANNOUNCE_FILE WHERE NO = #{no}")
	List<String> getAnnounceFile(@Param("no") int no);

}
