package web.com.springweb.a07_calendar;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface A03_CalendarDao {

	@Select("SELECT ID, TITLE, WRITER, START1 \"START\", END1 \"END\", CONTENT, \r\n"
			+ "		BACKGROUND_COLOR, TEXT_COLOR, ALL_DAY, URL_LINK \r\n"
			+ "FROM CALENDAR ")
	List<Calendar> getCalendarList();


	@Insert("INSERT INTO CALENDAR VALUES(CALENDAR_SEQ.NEXTVAL, #{title}, #{writer},\r\n"
			+ "	to_date( #{start},'YYYY-MM-DD'), to_date( #{end},'YYYY-MM-DD'), #{content},\r\n"
			+ "	 #{backgroundColor},  #{textColor}, #{allDay}, #{urlLink})")							 
	int insertCalendar(Calendar ins);	
	
}
