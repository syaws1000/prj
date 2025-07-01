package web.com.spring.a03_mvc;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class A02_AnimalService {

	@Autowired(required=false)
	private A02_AnimalDao dao;
	
	public String getLocation(String animalName) {
		return dao.getLocation(animalName);
	}
}
