package web.com.spring.a06_mvc;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import web.com.spring.vo.SuperFood;

@Mapper
public interface A02_SuperFoodDao {


	@Select("	SELECT * FROM Super_Foods\r\n"
			+ "	WHERE food_name LIKE  #{foodName}\r\n"
			+ "	AND funny_effect LIKE #{funnyEffect}")
	List<SuperFood> getFoodList(SuperFood sch); 
	 
}
