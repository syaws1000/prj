package web.com.springweb.a04_mvc.a02_service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.com.springweb.a04_mvc.a03_dao.A01_CustomerDao;
import web.com.springweb.a04_mvc.a04_vo.Customer;

@Service
public class A01_CustomerService {
	// autowiring
	// 컨테이너 안에서 해당 객체가 자동을 할당되게 하기 위해서..
	@Autowired(required=false)  // 해당 객체가 컨테이너에 없더라도 에러발생 방지..
	private A01_CustomerDao dao;
	
	public List<Customer> getCustomerList(  Customer sch ){
		// name, addressname이 null
		if(sch.getCustomerName()==null) sch.setCustomerName("");
		if(sch.getCustomerAddress()==null) sch.setCustomerAddress("");	
		// "%" + get XXX "%"
		sch.setCustomerName("%"+sch.getCustomerName()+"%");
		sch.setCustomerAddress("%"+sch.getCustomerAddress()+"%");
		return dao.getCustomerList(sch);
	}
	public String insertCustomer(Customer ins) {
				// 등록되면 row단위로 리턴..
		return dao.insertCustomer(ins)>0?"등록성공":"등록실패";
	}
	
	public String updateCustomer(Customer upt) {
		return dao.updateCustomer(upt)>0?"수정성공":"수정실패";
	}
	
	
	public Customer getCustomer(int customerId) {
		return dao.getCustomer(customerId);
	}
	public String deleteCustomer(int customerId) {
		return dao.deleteCustomer(customerId)>0?"삭제성공":"삭제실패";
	}
}




