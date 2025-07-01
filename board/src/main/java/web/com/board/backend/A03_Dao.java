package web.com.board.backend;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface A03_Dao {

	@Select("SELECT * FROM MEMBER10 WHERE ID = #{id} AND PWD = #{pwd}")
	Member login(Member sch);	
	
	@Select("SELECT * FROM ANNOUNCE "
			+ "WHERE TITLE LIKE #{title} AND AUTHOR LIKE #{author} "
			+ "ORDER BY BOARD_ID DESC ")
	List<Announce> getAnnounceList(AnnounceSch sch);
	
	@Insert("INSERT INTO announce  VALUES (ANNOUNCE_SEQ.NEXTVAL, #{title}, #{content}, #{parentId}, #{author}, SYSDATE, SYSDATE, #{status}, 0, 0)")
	int insertAnnounce(Announce ins);

	@Insert("INSERT INTO ANNOUNCE_FILE VALUES(ANNOUNCE_SEQ.CURRVAL, #{fname}, #{etc}, SYSDATE, SYSDATE)")
	int insertFile(AnnFileDto ins);	
	

}
