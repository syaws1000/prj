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
	
	@Select("SELECT COUNT(*)\r\n"
			+ "FROM ANNOUNCE B\r\n"
			+ "WHERE TITLE  LIKE #{title}\r\n"
			+ "AND AUTHOR  LIKE #{author}\r\n"
			+ "START WITH PARENT_ID =0\r\n"
			+ "CONNECT BY PRIOR BOARD_ID = PARENT_ID")
	int getTotCount(AnnounceSch sch);
	
	@Select("SELECT * FROM\r\n"
			+ "(\r\n"
			+ "SELECT ROWNUM CNT, LEVEL, B.*\r\n"
			+ "FROM ANNOUNCE B\r\n"
			+ "WHERE TITLE  LIKE #{title}\r\n"
			+ "AND AUTHOR  LIKE  #{author}\r\n"
			+ "START WITH PARENT_ID =0\r\n"
			+ "CONNECT BY PRIOR BOARD_ID = PARENT_ID \r\n"
			+ "ORDER SIBLINGS BY BOARD_ID DESC )\r\n"
			+ "WHERE CNT BETWEEN #{start} AND #{end}\r\n")
	List<Announce> getAnnounceList(AnnounceSch sch);

	@Select("SELECT * FROM announce WHERE  board_id= #{boardId}")
	Announce getAnnounce(@Param("boardId") int boardId);

	@Select("SELECT FNAME FROM ANNOUNCE_FILE WHERE  NO= #{no}")
	List<String> getFile(@Param("no") int no);	
	
	@Insert("INSERT INTO announce  VALUES (ANNOUNCE_SEQ.NEXTVAL, #{title}, #{content}, #{parentId}, #{author}, SYSDATE, SYSDATE, #{status}, 0, 0)")
	int insertAnnounce(Announce ins);

	@Insert("INSERT INTO ANNOUNCE_FILE VALUES(ANNOUNCE_SEQ.CURRVAL, #{fname}, #{etc}, SYSDATE, SYSDATE)")
	int insertFile(AnnFileDto ins);	

	@Update("UPDATE announce SET views = views + 1 WHERE board_id = #{boardId}")
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
	
	@Update("	UPDATE ANNOUNCE\r\n"
			+ "	   SET COMMENT_COUNT = COMMENT_COUNT+1\r\n"
			+ "	 WHERE board_id = #{boardId}")
	int updateCommentCnt(@Param("boardId") int boardId);	

}
