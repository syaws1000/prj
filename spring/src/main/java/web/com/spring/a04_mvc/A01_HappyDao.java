package web.com.spring.a04_mvc;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface A01_HappyDao {
	
	@Select("SELECT destination FROM Happy_Vacation WHERE activity = #{activity}")			  
	String getDestination(@Param("activity") String activity);
}
