package web.com.spring.a03_mvc;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface A03_FoodDao {
	@Select("SELECT item_ordered FROM food_orders "
			+ "WHERE customer_name = #{customerName}")
	String getItemOrdered(@Param("customerName") String customerName );
}
