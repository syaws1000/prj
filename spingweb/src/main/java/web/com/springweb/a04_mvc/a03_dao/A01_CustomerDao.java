package web.com.springweb.a04_mvc.a03_dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import web.com.springweb.a04_mvc.a04_vo.Customer;

@Mapper
public interface A01_CustomerDao {
	@Select("SELECT * FROM customers "
			+ "WHERE customer_name  LIKE #{customerName} "
			+ "AND customer_address LIKE #{customerAddress} "
			+ "ORDER BY CUSTOMER_ID DESC") 
	List<Customer> getCustomerList(  Customer sch );

	@Insert("INSERT INTO customers VALUES (customer_seq.nextval, "
			+ "#{customerName}, #{customerEmail},#{customerPhone}, #{customerAddress})")
	int insertCustomer(Customer ins);
	
	@Select("SELECT * FROM CUSTOMERS WHERE CUSTOMER_ID = #{customerId}")
	Customer getCustomer(@Param("customerId") int customerId);
	
}
