package web.com.spring.a04_mvc;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class A01_HappyService {
	@Autowired(required=false)
	private A01_HappyDao dao;
	
	public String getDestination( String activity) {
		return dao.getDestination(activity);
	}
}
