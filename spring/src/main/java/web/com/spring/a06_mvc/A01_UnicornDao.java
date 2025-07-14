package web.com.spring.a06_mvc;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import web.com.spring.a06_mvc.vo.Unicorn;

@Mapper
public interface A01_UnicornDao {
	@Select("	SELECT * FROM unicorn_zoo \r\n"
			+ "	WHERE unicorn_name LIKE #{unicornName} \r\n"
			+ "	AND unicorn_special_ability LIKE #{unicornSpecialAbility} "
			+ " ORDER BY UNICORN_ID DESC ")
	List<Unicorn> unicornZooList(Unicorn sch);
	
	@Insert("INSERT INTO unicorn_zoo values(unicorn_seq.nextval,#{unicornName}, #{unicornSpecialAbility})")
	int insertUnicornZoo(Unicorn ins);	                                                  
	
	@Select("SELECT * FROM UNICORN_ZOO WHERE UNICORN_ID = #{unicornId}")
	Unicorn getImaginaryAnimal(@Param("unicornId") int unicornId);
	/*
	private int unicornId;
	private String unicornName;
	private String unicornSpecialAbility;
	 * */

	@Update("	UPDATE unicorn_zoo\r\n"
			+ "	   SET unicorn_name = #{unicornName},\r\n"
			+ "	       UNICORN_SPECIAL_ABILITY = #{unicornSpecialAbility} \r\n"
			+ "	 WHERE UNICORN_ID = #{unicornId}")
	int updateUnicorn(Unicorn upt);	
}
