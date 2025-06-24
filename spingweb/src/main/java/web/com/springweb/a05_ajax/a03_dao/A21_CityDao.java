package web.com.springweb.a05_ajax.a03_dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import web.com.springweb.a05_ajax.dto.City;

@Mapper
public interface A21_CityDao {
	@Select("SELECT * FROM cities WHERE CITY_NAME LIKE #{cityName} AND COUNTRY LIKE #{country}")
	List<City> getCityList(City sch);
	
	@Insert("INSERT INTO cities VALUES (CITY_SEQ.NEXTVAL,#{cityName}, #{country}, #{population}, #{area}, #{foundedDate} )")
	int insertCity( City ins);
	
	@Select("SELECT * FROM cities WHERE CITY_ID = #{cityId}")
	City getCity(@Param("cityId") int cityId);

	@Update("	UPDATE CITIES\r\n"
			+ "	   SET CITY_NAME=#{cityName},\r\n"
			+ "	       COUNTRY = #{country},\r\n"
			+ "	       POPULATION = #{population},\r\n"
			+ "	       AREA = #{area},\r\n"
			+ "	       FOUNDED_DATE = #{foundedDate}\r\n"
			+ "	  WHERE CITY_ID = #{cityId}")
	int updateCity(City upt);
	
	@Delete("DELETE FROM CITIES WHERE CITY_ID = #{cityId}")
	int deleteCity( @Param("cityId") int cityId );
}
