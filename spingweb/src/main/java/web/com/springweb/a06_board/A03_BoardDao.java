package web.com.springweb.a06_board;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import web.com.springweb.vo.Member;

@Mapper
public interface A03_BoardDao {
	@Select("SELECT * FROM MEMBER WHERE ID=#{id} AND PWD = #{pwd}")
	Member login(Member sch);
	
	
	@Select("SELECT * FROM BOARD WHERE SUBJECT LIKE #{subject} AND WRITER LIKE #{writer}")
	List<Board> getBoardList(BoardSch sch);   
	// refno subject content writer
	@Insert("INSERT INTO BOARD VALUES(BOARD_SEQ.NEXTVAL,"
			+ "#{refno},#{subject},#{content},#{writer},0,SYSDATE, SYSDATE)")
	int insertBoard(Board ins); 
	
	@Insert("INSERT INTO BOARDFILE VALUES(BOARD_SEQ.CURRVAL, #{fname}, #{etc}, SYSDATE, SYSDATE)")
	int insertFile(FileDto ins);	
	
}
