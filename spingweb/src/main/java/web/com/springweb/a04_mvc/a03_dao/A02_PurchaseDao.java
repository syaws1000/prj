package web.com.springweb.a04_mvc.a03_dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import web.com.springweb.a04_mvc.a04_vo.Customer;
import web.com.springweb.a04_mvc.a04_vo.Purchase;

@Mapper
public interface A02_PurchaseDao {
	@Select("SELECT P.*, C.CUSTOMER_NAME\r\n"
			+ "FROM PURCHASES P,  CUSTOMERS C\r\n"
			+ "WHERE P.CUSTOMER_ID = C.CUSTOMER_ID   \r\n"
			+ "AND PROD_NAME LIKE #{prodName} AND PURCHASE_AMOUNT BETWEEN #{start} AND #{end} "
			+ "ORDER BY PURCHASE_ID DESC ")
	List<Purchase> getPurchaseList(Purchase sch);
	// 자바의 날짜형태를  mybatis 프레임워크는 자동으로 데이터의 날짜형태로 변환을 해서 아래와 같이 purchaseDate로 선언하여
	// 자동으로 날짜 데이터를 등록을 해준다.
	@Insert("INSERT INTO purchases VALUES (purchase_seq.nextval, #{customerId}, "
			+ "#{purchaseDate}, #{purchaseAmount}, #{prodName})")	
	int insertPurchase(Purchase ins);
	
	
	@Select("SELECT CUSTOMER_ID, CUSTOMER_NAME FROM CUSTOMERS ORDER BY CUSTOMER_ID")
	List<Customer> getCustomerInfo();
	
	@Select("SELECT CUSTOMER_ID, CUSTOMER_NAME FROM CUSTOMERS ORDER BY CUSTOMER_ID")
	List<Map<String, String>> getCustomerMap();

	@Select("SELECT * FROM PURCHASES WHERE purchase_id = #{purchase_id}")
	Purchase getPurchase(@Param("purchase_id")int purchase_id);	
	
	
}
