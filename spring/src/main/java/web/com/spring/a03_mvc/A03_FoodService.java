package web.com.spring.a03_mvc;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class A03_FoodService {
	
	@Autowired(required=false)
	private A03_FoodDao dao;
	
	// String getItemOrdered(@Param("customerName") String customerName );
	public String getItemOrdered(String customerName ) {
		return dao.getItemOrdered(customerName);
	}
}
