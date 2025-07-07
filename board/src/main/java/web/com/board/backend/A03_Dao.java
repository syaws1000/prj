package web.com.board.backend;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface A03_Dao {

	@Select("SELECT * FROM MEMBER10 WHERE ID = #{id} AND PWD = #{pwd}")
	Member login(Member sch);	
	
	@Select("SELECT * FROM ANNOUNCE "
			+ "WHERE TITLE LIKE #{title} AND AUTHOR LIKE #{author} "
			+ "ORDER BY BOARD_ID DESC ")
	List<Announce> getAnnounceList(AnnounceSch sch);

	@Select("SELECT * FROM announce WHERE  board_id= #{boardId}")
	Announce getAnnounce(@Param("boardId") int boardId);

	@Select("SELECT FNAME FROM ANNOUNCE_FILE WHERE  NO= #{no}")
	List<String> getFile(@Param("no") int no);	
	
	@Insert("INSERT INTO announce  VALUES (ANNOUNCE_SEQ.NEXTVAL, #{title}, #{content}, #{parentId}, #{author}, SYSDATE, SYSDATE, #{status}, 0, 0)")
	int insertAnnounce(Announce ins);

	@Insert("INSERT INTO ANNOUNCE_FILE VALUES(ANNOUNCE_SEQ.CURRVAL, #{fname}, #{etc}, SYSDATE, SYSDATE)")
	int insertFile(AnnFileDto ins);	

	@Select("UPDATE announce SET views = views + 1 WHERE board_id = #{boardId}")
	int readCount(@Param("boardId") int boardId);

	@Update("	UPDATE announce\r\n"
			+ "	   SET title = #{title},\r\n"
			+ "	       content = #{content},\r\n"
			+ "	       updated_at = sysdate,\r\n"
			+ "	       status = #{status}\r\n"
			+ "	where board_id = #{boardId}")
	int updateBoard(Announce upt);


	
	@Delete("DELETE FROM announce WHERE board_id = #{boardId}")
	int deleteBoard(@Param("boardId") int boardId);	
	

}
