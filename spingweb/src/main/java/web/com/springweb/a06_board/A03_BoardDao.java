package web.com.springweb.a06_board;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface A03_BoardDao {
	
	@Select("SELECT * FROM BOARD WHERE SUBJECT LIKE #{subject} AND WRITER LIKE #{writer}")
	List<Board> getBoardList(BoardSch sch);   
}
