package web.com.spring.a07_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import web.com.spring.a07_mvc.vo.ImaginaryAnimal;

@Controller
public class A01_ImaginaryAnimalController {
	@Autowired(required=false)
	private A01_ImaginaryAnimalService service;
	
	// http://localhost:5052/imaginaryAnimalList
	@RequestMapping("imaginaryAnimalList")
	public String unicornList(ImaginaryAnimal sch, Model d) {
	
		d.addAttribute("list", service.getImaginaryAnimalList(sch));
		
		return "WEB-INF\\views\\a07_mvc\\a01_imaginaryAnimalList.jsp";
	}
	// http://localhost:5052/imaginaryAnimalInsert
	@RequestMapping("imaginaryAnimalInsert")
	public String unicornInsert(ImaginaryAnimal ins, Model d) {
		if(ins.getAnimalName()!=null) {
			d.addAttribute("msg", service.insertImaginaryAnimal(ins));
		}
		return "WEB-INF\\views\\a07_mvc\\a01_imaginaryAnimalInsert.jsp";
	}
    // http://localhost:5052/imaginaryAnimalDetail?animalId=9
	@GetMapping("imaginaryAnimalDetail")
	public String imaginaryAnimalDetail(@RequestParam("animalId") int animalId, Model d) {
		d.addAttribute("ani", service.getImaginaryAnimal(animalId));
		return "WEB-INF\\views\\a07_mvc\\a01_imaginaryAnimalDetail.jsp";
	}
	

}
