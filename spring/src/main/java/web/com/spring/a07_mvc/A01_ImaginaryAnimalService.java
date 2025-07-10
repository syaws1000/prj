package web.com.spring.a07_mvc;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.com.spring.a07_mvc.vo.ImaginaryAnimal;

@Service
public class A01_ImaginaryAnimalService {
	
	@Autowired(required=false)
	private A01_ImaginaryAnimalDao dao;
	
	public List<ImaginaryAnimal> getImaginaryAnimalList(ImaginaryAnimal sch){
		// // animalName habitat
		// 초기 화면에 요청값이 없을 때는 ""으로 처리
		if(sch.getAnimalName()==null) sch.setAnimalName("");
		if(sch.getHabitat()==null) sch.setHabitat("");
		
		// like '%문자열%'을 위해서 양 옆에 "%"+조회 + "%" 처리
		sch.setAnimalName("%"+sch.getAnimalName()+"%");
		sch.setHabitat("%"+sch.getHabitat()+"%");
		
		return dao.getImaginaryAnimalList(sch);
	}
	
	public String insertImaginaryAnimal(ImaginaryAnimal ins) {
		return dao.insertImaginaryAnimal(ins)>0?"등록성공":"등록실패";
	}
	public ImaginaryAnimal getImaginaryAnimal(int animalId) {
		return dao.getImaginaryAnimal(animalId);
	}
}
