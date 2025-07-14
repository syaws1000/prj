package web.com.spring.a06_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import web.com.spring.vo.SuperFood;

@Controller
public class A02_SuperFoodController {
	@Autowired(required=false)
	private A02_SuperFoodService service;
	// http://localhost:5052/superFoodList
	@RequestMapping("superFoodList")
	public String superFoodList(SuperFood sch, Model d) {
		d.addAttribute("list", service.superFoodList(sch));
		return "WEB-INF\\views\\a06_mvc\\a02_superFoodList.jsp";
	}
	// 수퍼 등록 화면 구현..
	// http://localhost:5052/insertSuperFood
	@RequestMapping("insertSuperFood")
	public String insertSuperFood(SuperFood ins, Model d) {
		if(ins.getFoodName()!=null) {
			d.addAttribute("msg", service.insertFood(ins));
		}
		
		return "WEB-INF\\views\\a06_mvc\\a02_superFoodInsert.jsp";
	}	
	//http://localhost:5052/superFoodDetail?foodId=3
	@RequestMapping("superFoodDetail")
	public String superFoodDetail(@RequestParam("foodId") int foodId, Model d) {
// WEB-INF\views\a06_mvc\a02_superFoodDetail.jsp
		d.addAttribute("food", service.getSuperFood(foodId));
		return "WEB-INF\\views\\a06_mvc\\a02_superFoodDetail.jsp";
	}	
	
	
}
