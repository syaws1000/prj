package web.com.spring.a07_mvc;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.com.spring.a07_mvc.vo.FutureCar;

@Service
public class A02_FutureCarService {
	@Autowired
	private A02_FutureCarDao dao;
	
	public List<FutureCar> getFutureCarList(FutureCar sch){
		if(sch.getCarName()==null) sch.setCarName("");
		if(sch.getFuelType()==null) sch.setFuelType("");
		sch.setCarName("%"+sch.getCarName()+"%");
		sch.setFuelType("%"+sch.getFuelType()+"%");
		return dao.getFutureCarList(sch);
	}
	public String insertFutureCar(FutureCar ins) {
		return dao.insertFutureCar(ins)>0?"등록성공":"등록실패";
	}
	
	public FutureCar getFutureCar(int carId) {
		return dao.getFutureCar(carId);
	}

}
