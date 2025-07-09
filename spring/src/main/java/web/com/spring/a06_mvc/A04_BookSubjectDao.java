package web.com.spring.a06_mvc;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import web.com.spring.vo.BookSubject;

@Mapper
public interface A04_BookSubjectDao {
	
	
	@Select("SELECT * \r\n"
			+ "	FROM Book_Subject\r\n"
			+ "	WHERE subject LIKE #{subject} AND author LIKE  #{author}")
	List<BookSubject> getBookSubject(BookSubject sch);
	
}
