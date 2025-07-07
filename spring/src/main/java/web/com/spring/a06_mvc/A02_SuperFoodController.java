package web.com.spring.a06_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
