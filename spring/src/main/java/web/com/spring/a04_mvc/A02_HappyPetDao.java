package web.com.spring.a04_mvc;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface A02_HappyPetDao {

	@Select("SELECT pet_name FROM Happy_Pet WHERE special_ability = #{specialAbility}")
	String getPetname(@Param("specialAbility") String special_ability);

}
