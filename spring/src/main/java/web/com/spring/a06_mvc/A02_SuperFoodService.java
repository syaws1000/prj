package web.com.spring.a06_mvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.com.spring.vo.SuperFood;

@Service
public class A02_SuperFoodService {
	@Autowired(required=false)
	private A02_SuperFoodDao dao;
	
	public List<SuperFood> superFoodList(SuperFood sch) {
        
	      if (sch.getFoodName() == null) sch.setFoodName("");
	       if (sch.getFunnyEffect() == null) sch.setFunnyEffect("");

	       sch.setFoodName("%" + sch.getFoodName() + "%");
	       sch.setFunnyEffect("%" + sch.getFunnyEffect() + "%");

	       return dao.getFoodList(sch);
	   }	
}
