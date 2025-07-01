package web.com.spring.a03_mvc;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface A02_AnimalDao {
	@Select("SELECT LOCATION FROM ZOO_ANIMALS WHERE ANIMAL_NAME=#{animalName}")
	String getLocation(@Param("animalName") String animalName);

}
