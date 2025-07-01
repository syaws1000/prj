package web.com.springweb.a06_board;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import web.com.springweb.vo.Member;

@Mapper
public interface A03_BoardDao {
	@Select("SELECT * FROM MEMBER WHERE ID=#{id} AND PWD = #{pwd}")
	Member login(Member sch);
	
	
	@Select("SELECT * FROM BOARD WHERE SUBJECT LIKE #{subject} AND WRITER LIKE #{writer} ORDER BY NO DESC")
	List<Board> getBoardList(BoardSch sch);   
	// refno subject content writer
	@Insert("INSERT INTO BOARD VALUES(BOARD_SEQ.NEXTVAL,"
			+ "#{refno},#{subject},#{content},#{writer},0,SYSDATE, SYSDATE)")
	int insertBoard(Board ins); 
	
	@Insert("INSERT INTO BOARDFILE VALUES(BOARD_SEQ.CURRVAL, #{fname}, #{etc}, SYSDATE, SYSDATE)")
	int insertFile(FileDto ins);	

	@Select("SELECT * FROM BOARD WHERE NO = #{no}")
	Board getBoard(@Param("no") int no);

	@Select("SELECT * FROM BOARDFILE WHERE NO = #{no}")
	List<FileDto> getFile(@Param("no") int no);	

	@Update("UPDATE BOARD SET READCNT = READCNT+1 WHERE NO = #{no}")
	int uptReadCnt(@Param("no")int no);

	@Update("	UPDATE BOARD\r\n"
			+ "		SET SUBJECT = #{subject},\r\n"
			+ "		    CONTENT = #{content},\r\n"
			+ "		    UPTDTE = SYSDATE\r\n"
			+ "	WHERE NO = #{no}")
	int updateBoard(Board upt);
	
	@Delete("DELETE FROM BOARD WHERE NO = #{no}")
	int deleteBoard(@Param("no") int no);

	
}
