package web.com.spring.a07_mvc;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import web.com.spring.a07_mvc.vo.ImaginaryAnimal;

@Mapper
public interface A01_ImaginaryAnimalDao {
	@Select("	SELECT * FROM Imaginary_Animals "
			+ " WHERE animal_name LIKE #{animalName} AND habitat LIKE #{habitat} "
			+ " ORDER BY animal_id DESC")
	List<ImaginaryAnimal> getImaginaryAnimalList(ImaginaryAnimal sch);
	// animalName habitat
	
	@Insert("INSERT INTO Imaginary_Animals VALUES (Animals_seq.nextval, #{animalName}, #{animalAbility}, #{habitat})")
	int insertImaginaryAnimal(ImaginaryAnimal ins);	      

	@Select("SELECT * FROM Imaginary_Animals WHERE animal_id=#{animalId}")
	ImaginaryAnimal getImaginaryAnimal(@Param("animalId") int animalId);	

	
	
	
}
