package web.com.spring.a07_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import web.com.spring.a07_mvc.vo.FutureCar;

@Controller
public class A02_FutureCarController {
	
	@Autowired(required=false)
	private A02_FutureCarService service;
	
	// // list carId  carName carFeature fuelType releaseDate topSpeed
	
	// http://localhost:5052/carList
	@RequestMapping("carList")
	public String getFutureCarList(FutureCar sch, Model d) {
		
		d.addAttribute("list", service.getFutureCarList(sch));
		return "WEB-INF\\views\\a07_mvc\\a02_futureCarList.jsp";
	}
	// http://localhost:5052/carInsert
	@RequestMapping("carInsert")
	public String insertFutureCar(FutureCar ins, Model d) {
		if(ins.getCarName()!=null)
			d.addAttribute("msg", service.insertFutureCar(ins));
		return "WEB-INF\\views\\a07_mvc\\a02_futureCarInsert.jsp";
	}
	// http://localhost:5052/carUpdate
	@PostMapping("carUpdate")
	public String carUpdate(FutureCar upt, Model d) {
		d.addAttribute("msg", service.updateCar(upt)); // 수정 처리
		d.addAttribute("car", service.getFutureCar(upt.getCarId())); // 수정 후 조회
		return "WEB-INF\\views\\a07_mvc\\a02_futureCarDetail.jsp";
	}	
	// carUpdate  carDelete
	// http://localhost:5052/carDelete
	@PostMapping("carDelete")
	public String carDelete(@RequestParam("carId") int carId, Model d) {
		d.addAttribute("msg", service.deleteCar(carId)); // 삭제 처리
		return "WEB-INF\\views\\a07_mvc\\a02_futureCarDetail.jsp";
	}		
	// carInsert   getFutureCar?carId=1
	// http://localhost:5052/getFutureCar?carId=1
	@GetMapping("getFutureCar")
	public String getFutureCar(@RequestParam("carId") int carId, Model d) {
		d.addAttribute("car", service.getFutureCar(carId));
		return "WEB-INF\\views\\a07_mvc\\a02_futureCarDetail.jsp";
	}

	
}
