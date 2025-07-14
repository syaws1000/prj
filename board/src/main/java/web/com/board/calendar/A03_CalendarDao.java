package web.com.board.calendar;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;


@Mapper
public interface A03_CalendarDao {
	@Select("SELECT ID, TITLE, WRITER, START1 \"START\", END1 \"END\", CONTENT, \r\n"
			+ "		BACKGROUND_COLOR, TEXT_COLOR, ALL_DAY, URL_LINK \r\n"
			+ "FROM CALENDAR ")
	List<Calendar> getCalendarList();
}
