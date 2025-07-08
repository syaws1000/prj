package web.com.spring.a06_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import web.com.spring.vo.UnicornZoo;

@Controller
public class A01_UnicornController {
	@Autowired(required=false)
	private A01_UnicornService service;
	
	// http://localhost:5052/unicornList
	@RequestMapping("unicornList")
	public String unicornList(UnicornZoo sch, Model d) {
	
		d.addAttribute("list", service.unicornZooList(sch));
		
		return "WEB-INF\\views\\a06_mvc\\a01_unicornList.jsp";
	}
	// http://localhost:5052/unicornInsert
	@RequestMapping("unicornInsert")
	public String unicornInsert(UnicornZoo ins, Model d) {
		if(ins.getUnicornName()!=null) {
			d.addAttribute("msg", service.insertUnicornZoo(ins));
		}
		// // unicornName unicornSpecialAbility
		return "WEB-INF\\views\\a06_mvc\\a01_unicornInsert.jsp";
	}
	

}
