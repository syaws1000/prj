package web.com.springweb.a04_mvc.a03_dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import web.com.springweb.a06_board.Board;
import web.com.springweb.a06_board.FileDto;

@Mapper
public interface A08_FileUploadDao {
// boardexp01
// boardFileexp01
	
	@Insert("INSERT INTO boardexp01 values(boardexp01_seq.nextval, "
			+ "#{refno},#{subject},#{content},#{writer},0,sysdate,sysdate)")
	int insertBoardexp01(Board ins);

	@Insert("INSERT INTO boardFileexp01 values(boardexp01_seq.currval,"
			+ "#{fname}, #{etc}, sysdate, sysdate)")
	int insertBoardFileepx01(FileDto ins);
	
	@Select("SELECT * FROM boardexp01 WHERE NO = #{no}")
	Board getBoardExp01(@Param("no") int no);

	@Select("SELECT fname FROM boardFileexp01 WHERE NO = #{no}")
	List<String> getFnames(@Param("no") int no);
	

}
