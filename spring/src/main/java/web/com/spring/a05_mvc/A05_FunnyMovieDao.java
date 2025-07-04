package web.com.spring.a05_mvc;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import web.com.spring.vo.FunnyMovie;

@Mapper
public interface A05_FunnyMovieDao {

	@Select("SELECT * FROM Funny_Movie WHERE laugh_points = #{laughPoints}")
	FunnyMovie getFunnyMovie(@Param("laughPoints") String laughPoints);
}
