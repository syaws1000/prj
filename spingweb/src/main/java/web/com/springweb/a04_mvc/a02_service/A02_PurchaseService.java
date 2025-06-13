package web.com.springweb.a04_mvc.a02_service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.com.springweb.a04_mvc.a03_dao.A02_PurchaseDao;
import web.com.springweb.a04_mvc.a04_vo.Purchase;

@Service
public class A02_PurchaseService {
	@Autowired(required=false)
	private A02_PurchaseDao dao;
	
	public List<Purchase> getPurchaseList(Purchase sch){
		if(sch.getProdName()==null) {
			sch.setProdName("");
		}
		// start ==> 0 최소..
		
		// end ==> 최대값으로 설정..
		if(sch.getEnd() == 0) {
			sch.setEnd(99999999);
		}
		sch.setProdName("%"+sch.getProdName()+"%");
		
		return dao.getPurchaseList(sch);
	}
	public String insertPurchase(Purchase ins) {
		return dao.insertPurchase(ins)>0?"등록성공":"등록실패";
	}
}
