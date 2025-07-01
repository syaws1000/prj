package web.com.spring.a03_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class A03_FoodController {
	@Autowired(required=false)
	private A03_FoodService service;
	
	
	// http://localhost:5052/foodOrder
	// http://localhost:5052/foodOrder?customerName=홍길동
	@GetMapping("foodOrder")
	public String foodOrder(@RequestParam(value="customerName", defaultValue = "") String customerName, Model d) {
		d.addAttribute("itemOrdered", service.getItemOrdered(customerName));
		// 요청값: customerName, 모델데이터: itemOrdered
		return "WEB-INF\\views\\a03_mvc\\a03_food.jsp";
	}
}
