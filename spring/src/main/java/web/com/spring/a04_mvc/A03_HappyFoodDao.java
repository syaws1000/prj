package web.com.spring.a04_mvc;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import web.com.spring.a04_mvc.dto.HappyFood;

@Mapper
public interface A03_HappyFoodDao {
	@Select("SELECT * FROM Happy_Food WHERE food_name=#{foodName} ")
	HappyFood getFood( @Param("foodName") String foodName);

}
