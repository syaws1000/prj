package web.com.springweb.a04_mvc.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import web.com.springweb.a04_mvc.a02_service.A02_PurchaseService;
import web.com.springweb.a04_mvc.a04_vo.Purchase;

@Controller
public class A02_PurchaseController {
	@Autowired(required=false)
	private A02_PurchaseService service;
	
	// http://localhost:5050/purchaseList
	@RequestMapping("purchaseList")
	public String purchaseList(Purchase sch, Model d) {
		d.addAttribute("list", service.getPurchaseList(sch));
		return "WEB-INF\\views\\a04_mvc\\a04_purchaseList.jsp";
	}

}
