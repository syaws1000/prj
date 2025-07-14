package web.com.spring.a06_mvc;

import java.util.List;

import org.apache.ibatis.annotations.Param;
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
	public String insertFood(SuperFood ins) {
		return dao.insertFood(ins)>0?"등록 성공":"등록 실패";
	}
	public SuperFood getSuperFood(@Param("foodId") int foodId) {
		return dao.getSuperFood(foodId);
	}
}
