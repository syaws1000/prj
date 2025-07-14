package web.com.spring.a06_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import web.com.spring.vo.ImaginaryAnimal;

@Controller
public class A01_UnicornController {
	@Autowired(required=false)
	private A01_UnicornService service;
	
	// http://localhost:5052/unicornList
	@RequestMapping("unicornList")
	public String unicornList(ImaginaryAnimal sch, Model d) {
	
		d.addAttribute("list", service.unicornZooList(sch));
		
		return "WEB-INF\\views\\a06_mvc\\a01_unicornList.jsp";
	}
	// http://localhost:5052/unicornInsert
	@RequestMapping("unicornInsert")
	public String unicornInsert(ImaginaryAnimal ins, Model d) {
		if(ins.getUnicornName()!=null) {
			d.addAttribute("msg", service.insertUnicornZoo(ins));
		}
		// // unicornName unicornSpecialAbility
		return "WEB-INF\\views\\a06_mvc\\a01_unicornInsert.jsp";
	}
	// http://localhost:5052/unicornDetail?unicornId=3
	@RequestMapping("unicornDetail")
	public String unicornDetail(@RequestParam("unicornId") int unicornId, Model d) {
		//   
		d.addAttribute("uni", service.getImaginaryAnimal(unicornId));
		return "WEB-INF\\views\\a06_mvc\\a01_unicornDetail.jsp";
		
	}
	

}
