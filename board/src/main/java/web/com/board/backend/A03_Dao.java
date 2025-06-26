package web.com.board.backend;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface A03_Dao {
	@Select("SELECT * FROM ANNOUNCE "
			+ "WHERE TITLE LIKE #{title} AND AUTHOR LIKE #{author} "
			+ "ORDER BY BOARD_ID DESC ")
	List<Announce> getAnnounceList(AnnounceSch sch);
}
