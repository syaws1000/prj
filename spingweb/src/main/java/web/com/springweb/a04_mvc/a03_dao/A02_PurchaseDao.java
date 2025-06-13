package web.com.springweb.a04_mvc.a03_dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import web.com.springweb.a04_mvc.a04_vo.Purchase;

@Mapper
public interface A02_PurchaseDao {
	@Select("SELECT * FROM PURCHASES "
			+ "WHERE PROD_NAME LIKE #{prodName} "
			+ "AND PURCHASE_AMOUNT BETWEEN #{start} AND #{end}")
	List<Purchase> getPurchaseList(Purchase sch);
}
