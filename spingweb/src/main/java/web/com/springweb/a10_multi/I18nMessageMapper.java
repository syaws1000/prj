package web.com.springweb.a10_multi;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface I18nMessageMapper {
	@Select("SELECT CODE, LOCALE, MESSAGE FROM I18N_MESSAGE ORDER BY id")
	List<I18nMessageVO> selectAllMessages();
}
