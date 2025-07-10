package web.com.spring.a06_mvc;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import web.com.spring.vo.ImaginaryAnimal;

@Mapper
public interface A01_UnicornDao {
	@Select("	SELECT * FROM unicorn_zoo \r\n"
			+ "	WHERE unicorn_name LIKE #{unicornName} \r\n"
			+ "	AND unicorn_special_ability LIKE #{unicornSpecialAbility} "
			+ " ORDER BY UNICORN_ID DESC ")
	List<ImaginaryAnimal> unicornZooList(ImaginaryAnimal sch);
	
	@Insert("INSERT INTO unicorn_zoo values(unicorn_seq.nextval,#{unicornName}, #{unicornSpecialAbility})")
	int insertUnicornZoo(ImaginaryAnimal ins);	                                                  
}
