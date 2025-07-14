package web.com.spring.a06_mvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.com.spring.a06_mvc.vo.Unicorn;

@Service
public class A01_UnicornService {
	
	@Autowired(required=false)
	private A01_UnicornDao dao;
	
	public List<Unicorn> unicornZooList(Unicorn sch){
		// 초기 화면에 요청값이 없을 때는 ""으로 처리
		if(sch.getUnicornName()==null) sch.setUnicornName("");
		if(sch.getUnicornSpecialAbility()==null) sch.setUnicornSpecialAbility("");
		
		// like '%문자열%'을 위해서 양 옆에 "%"+조회 + "%" 처리
		sch.setUnicornName("%"+sch.getUnicornName()+"%");
		sch.setUnicornSpecialAbility("%"+sch.getUnicornSpecialAbility()+"%");
		
		return dao.unicornZooList(sch);
	}
	
	public String insertUnicornZoo(Unicorn ins) {
		return dao.insertUnicornZoo(ins)>0?"등록성공":"등록실패";
	}
	public Unicorn getImaginaryAnimal(int unicornId) {
		return dao.getImaginaryAnimal(unicornId);
	}
	public String updateUnicorn(Unicorn upt) {
		return dao.updateUnicorn(upt)>0?"수정성공":"수정실패";
	}
}
