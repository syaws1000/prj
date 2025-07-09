package web.com.spring.a06_mvc;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import web.com.spring.vo.SuperFood;

@Mapper
public interface A02_SuperFoodDao {


	@Select("	SELECT * FROM Super_Foods\r\n"
			+ "	WHERE food_name LIKE  #{foodName}\r\n"
			+ "	AND funny_effect LIKE #{funnyEffect} "
			+ " ORDER BY food_id DESC")
	List<SuperFood> getFoodList(SuperFood sch); 

	@Insert("INSERT INTO super_foods values(food_seq.nextval,"
			+ "#{foodName},#{funnyEffect})")
	int insertFood(SuperFood ins);
}
