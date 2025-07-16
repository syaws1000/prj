package web.com.board.calendar;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;


@Mapper
public interface A03_CalendarDao {
	@Select("SELECT ID, TITLE, WRITER, START1 \"START\", END1 \"END\", CONTENT, \r\n"
			+ "		BACKGROUND_COLOR, TEXT_COLOR, ALL_DAY, URL_LINK \r\n"
			+ "FROM CALENDAR ")
	List<Calendar> getCalendarList();
	
	@Insert("INSERT INTO CALENDAR VALUES(CALENDAR_SEQ.NEXTVAL, #{title}, #{writer},\r\n"
			+ "	 #{start}, #{end}, #{content},\r\n"
			+ "	 #{backgroundColor},  #{textColor}, #{allDay}, #{urlLink})")							 
	int insertCalendar(Calendar ins);

	@Update("	UPDATE CALENDAR\r\n"
			+ "	  SET TITLE = #{title},\r\n"
			+ "	      WRITER = #{writer},\r\n"
			+ "	      START1 = #{start},\r\n"
			+ "	      END1 = #{end},\r\n"
			+ "	      CONTENT = #{content},\r\n"
			+ "	      BACKGROUND_COLOR = #{backgroundColor},\r\n"
			+ "	      TEXT_COLOR = #{textColor},\r\n"
			+ "	      ALL_DAY = #{allDay},\r\n"
			+ "	      URL_LINK = #{urlLink}\r\n"
			+ "	 WHERE ID = #{id}")
	int calUpdate(Calendar upt); 
	 
	@Delete("DELETE FROM CALENDAR  WHERE ID = #{id}")
	int calDelete(@Param("id") int id);	
}
