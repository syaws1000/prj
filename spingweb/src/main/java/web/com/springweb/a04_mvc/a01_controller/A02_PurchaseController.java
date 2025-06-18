package web.com.springweb.a04_mvc.a01_controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import web.com.springweb.a04_mvc.a02_service.A02_PurchaseService;
import web.com.springweb.a04_mvc.a04_vo.Customer;
import web.com.springweb.a04_mvc.a04_vo.Purchase;

@Controller
public class A02_PurchaseController {
	@Autowired(required=false)
	private A02_PurchaseService service;
	
	
	// controller의 모든 뷰에서 사용할 공통 모델 어트리뷰터..
	@ModelAttribute("custCombo")
	public List<Customer> getCustomerInfo(){
		return service.getCustomerInfo();
	}
	@ModelAttribute("custComboMap")
	public List<Map<String, String>> getCustomerMap(){
		return service.getCustomerMap();
	}	
	
	// http://localhost:5050/purchaseList
	@RequestMapping("purchaseList")
	public String purchaseList(Purchase sch, Model d) {
		d.addAttribute("list", service.getPurchaseList(sch));
		return "WEB-INF\\views\\a04_mvc\\a04_purchaseList.jsp";
	}
	// http://localhost:5050/purchaseInsert
	// WEB-INF\views\a04_mvc\a05_purchaseInsert.jsp
	@GetMapping("purchaseInsert")
	public String purchaseInsert() {
		return "WEB-INF\\views\\a04_mvc\\a05_purchaseInsert.jsp";
	}
	@PostMapping("purchaseInsert")
	public String purchaseInsertPost(Purchase ins, Model d) {
		d.addAttribute("msg", service.purchaseInsert(ins));
		return "WEB-INF\\views\\a04_mvc\\a05_purchaseInsert.jsp";
	}
	// purchaseUpdate
	// 1. msg
	// 2. pu 객체로 단일 객체 처리..
	@PostMapping("purchaseUpdate")
	public String purchaseUpdate(Purchase upt, Model d) {
		d.addAttribute("msg", service.purchaseUpdate(upt));
		d.addAttribute("pu", service.getPurchase(upt.getPurchaseId()));
		return "WEB-INF\\views\\a04_mvc\\a06_purchaseDetail.jsp";
	}	
	@PostMapping("purchaseDelete")
	public String purchaseUpdate(@RequestParam("purchaseId") int purchaseId,
									RedirectAttributes redirectAttrs) {
		redirectAttrs.addFlashAttribute("msg", service.purchageDelete(purchaseId));
		return "redirect:/purchaseList";
	}		
	
	// http://localhost:5050/purchaseDetail
	@GetMapping("purchaseDetail")
	public String purchaseDetail(@RequestParam("purchaseId") int purchaseId, Model d) {
		d.addAttribute("pu", service.getPurchase(purchaseId));
		return "WEB-INF\\views\\a04_mvc\\a06_purchaseDetail.jsp";
	}	
	
}
