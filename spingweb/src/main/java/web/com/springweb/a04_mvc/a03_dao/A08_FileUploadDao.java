package web.com.springweb.a04_mvc.a03_dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import web.com.springweb.a06_board.Board;
import web.com.springweb.a06_board.FileDto;

@Mapper
public interface A08_FileUploadDao {

	
	@Insert("INSERT INTO boardexp01 values(boardexp01_seq.nextval, "
			+ "#{refno},#{subject},#{content},#{writer},0,sysdate,sysdate)")
	int insertBoardexp01(Board ins);

	@Insert("INSERT INTO boardFileexp01 values(boardexp01_seq.currval,"
			+ "#{fname}, #{etc}, sysdate, sysdate)")
	int insertBoardFileepx01(FileDto ins);

}
