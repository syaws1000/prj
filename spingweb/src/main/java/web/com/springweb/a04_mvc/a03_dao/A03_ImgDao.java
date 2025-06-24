package web.com.springweb.a04_mvc.a03_dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import web.com.springweb.vo.ImgDto;


@Mapper
public interface A03_ImgDao {
	@Select("SELECT * FROM imgboard WHERE NO = #{no}")
	ImgDto getImg(@Param("no") int no);
}
