package web.com.spring.a07_mvc;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import web.com.spring.a07_mvc.vo.FutureCar;

@Mapper
public interface A02_FutureCarDao {
	@Select("SELECT * FROM Future_Cars "
			+ "WHERE car_name LIKE #{carName} "
			+ "AND fuel_type LIKE #{fuelType} "
			+ "order by car_id desc")
	List<FutureCar> getFutureCarList(FutureCar sch);

	@Insert("INSERT INTO Future_Cars  VALUES (Future_Cars_seq.nextval, "
			+ "#{carName}, #{carFeature}, #{fuelType}, #{releaseDate}, #{topSpeed})")
	int insertFutureCar(FutureCar ins);

	@Select("SELECT * FROM Future_Cars WHERE car_id = #{carId}")
	FutureCar getFutureCar(@Param("carId") int carId);

	 
	@Update("	UPDATE Future_Cars\r\n"
			+ "	   SET car_name = #{carName},\r\n"
			+ "	       car_feature=#{carFeature},\r\n"
			+ "	       fuel_type=#{fuelType},\r\n"
			+ "	       release_date = #{releaseDate},\r\n"
			+ "	       top_speed = #{topSpeed}\r\n"
			+ "	WHERE car_id = #{carId}")
	int updateCar(FutureCar upt);

	@Delete("DELETE FROM Future_Cars WHERE car_id=#{carId}")
	int deleteCar(@Param("carId") int carId);		

}
