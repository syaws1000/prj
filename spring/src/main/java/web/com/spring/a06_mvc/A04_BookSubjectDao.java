package web.com.spring.a06_mvc;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import web.com.spring.vo.BookSubject;

@Mapper
public interface A04_BookSubjectDao {
	
	
	@Select("SELECT * \r\n"
			+ "	FROM Book_Subject\r\n"
			+ "	WHERE subject LIKE #{subject} AND author LIKE  #{author}")
	List<BookSubject> getBookSubject(BookSubject sch);
	// bookTitle subject author
	@Insert("INSERT INTO book_subject values(book_seq.nextval, #{bookTitle},#{subject},#{author})")
	int insertBookSubject(BookSubject ins);
	
	@Select("SELECT * FROM BOOK_SUBJECT WHERE book_id = #{bookId}")
	BookSubject getBook(@Param("bookId") int bookId);

	@Update("	update book_subject\r\n"
			+ "	   SET book_title = #{bookTitle},\r\n"
			+ "	       subject = #{subject},\r\n"
			+ "	       author = #{author}\r\n"
			+ "	    WHERE book_id = #{bookId}  ")
	int updateBookSubject(BookSubject upt);	
	
	@Delete("delete FROM BOOK_SUBJECT WHERE book_id = #{bookId}")
	int deleteBookSubject(@Param("bookId") int bookId);
	
	
	
}
