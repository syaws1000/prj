package web.com.spring.a04_mvc;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class A02_HappyPetService {
	@Autowired(required=false)
	private A02_HappyPetDao dao;
	
	public String getPetname(String specialAbility) {
		return dao.getPetname(specialAbility);
	}
	
}
