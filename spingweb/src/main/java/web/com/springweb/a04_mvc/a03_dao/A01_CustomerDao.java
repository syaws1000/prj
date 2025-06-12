package web.com.springweb.a04_mvc.a03_dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import web.com.springweb.a04_mvc.a04_vo.Customer;

@Mapper
public interface A01_CustomerDao {
	@Select("SELECT * FROM customers "
			+ "WHERE customer_name  LIKE #{customerName} "
			+ "AND customer_address LIKE #{customerAddress}") 
	List<Customer> getCustomerList(  Customer sch );

}
