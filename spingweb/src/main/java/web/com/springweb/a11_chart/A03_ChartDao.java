package web.com.springweb.a11_chart;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface A03_ChartDao {
	@Select("SELECT * FROM CHART01 WHERE TYPE=#{type}")
	List<Chart> getChart(@Param("type") String type);
}
