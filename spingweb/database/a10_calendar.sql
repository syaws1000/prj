SELECT * FROM EMP;
-- 캘린더에 사용할 데이터 테이블
CREATE TABLE CALENDAR(
	ID NUMBER PRIMARY KEY,
	TITLE VARCHAR2(100),
	START1 VARCHAR2(50),
	END1 VARCHAR2(50),	
	BACKGROUND_COLOR VARCHAR2(50),
	TEXT_COLOR VARCHAR2(50),
	ALL_DAY NUMBER(1),
	
	WRITER VARCHAR2(50),
	CONTENT VARCHAR2(1000),
	URL_LINK VARCHAR2(50)
);
CREATE TABLE CALENDAR2(
	ID NUMBER PRIMARY KEY,
	TITLE VARCHAR2(100),
	WRITER VARCHAR2(50),
	START1 DATE,
	END1 DATE,
	CONTENT VARCHAR2(1000),
	BACKGROUND_COLOR VARCHAR2(50),
	TEXT_COLOR VARCHAR2(50),
	ALL_DAY NUMBER(1),
	URL_LINK VARCHAR2(50)
);

CREATE SEQUENCE CALENDAR_SEQ;
CREATE SEQUENCE CALENDAR2_SEQ;
INSERT INTO CALENDAR VALUES(CALENDAR_SEQ.NEXTVAL, '첫일정','홍길동','2025-07-11','2025-07-12','첫일정입니다.',
							'#0099CC', '#CCFFFF',1, 'http://www.nanver.com');
INSERT INTO CALENDAR VALUES(CALENDAR_SEQ.NEXTVAL, '두번일정','홍길동','2025-07-14','2025-07-15','두일정입니다.',
							'#0099CC', '#CCFFFF',1, 'http://www.nanver.com');
INSERT INTO CALENDAR VALUES(CALENDAR_SEQ.NEXTVAL, '세번일정','홍길동','2025-07-15','2025-07-16','세번일정입니다.',
							'#0099CC', '#CCFFFF',1, 'http://www.nanver.com');

SELECT * FROM CALENDAR;
SELECT ID, TITLE, WRITER, START1 "START", END1 "END", CONTENT, 
		BACKGROUND_COLOR, TEXT_COLOR, ALL_DAY, URL_LINK 
FROM CALENDAR;
/*
 
 * 
 * */
INSERT INTO CALENDAR2 VALUES(CALENDAR2_SEQ.NEXTVAL, '첫일정','홍길동',
							to_date('2025-07-11','YYYY-MM-DD'), to_date('2025-07-12','YYYY-MM-DD'),'첫일정입니다.',
							'#0099CC', '#CCFFFF',1, 'http://www.nanver.com');

SELECT * FROM CALENDAR2;
/*
@Select("SELECT * FROM CALENDAR")
List<Calendar> getCalendarList();


INSERT INTO CALENDAR VALUES(CALENDAR_SEQ.NEXTVAL, #{title}, #{writer},
							to_date( #{start},'YYYY-MM-DD'), to_date( #{end},'YYYY-MM-DD'), #{content},
							 #{backgroundColor},  #{textColor}, #{allDay}, #{urlLink});
@Insert("")							 
int insertCalendar(Calendar ins);



class Calendar{
	private int id;
	private String title;
	private String writer;
	private String start;
	private String end;
	private String content;
	private String backgroundColor;
	private String textColor;
	private boolean allDay;
	private String urlLink;
}
id  title writer start end content backgroundColor textColor allDay urlLink
class Calendar2{
	private int id;
	private String title;
	private String writer;
	private Date start;
	private Date end;
	private String content;
	private String backgroundColor;
	private String textColor;
	private boolean allDay;
	private String urlLink;
}


 * */
SELECT * FROM calendar;
UPDATE CALENDAR
  SET TITLE = '일정수정1',
      WRITER = '작성자수정2',
      START1 = '2025-07-16',
      END1 = '2025-07-17',
      CONTENT = '내용수정3',
      BACKGROUND_COLOR = '#CCFFFF',
      TEXT_COLOR = '#0099CC',
      ALL_DAY = 1,
      URL_LINK = 'http://navaer.com'
 WHERE id = 14;     
/*
id  title writer start end content backgroundColor textColor allDay urlLink
UPDATE CALENDAR
  SET TITLE = #{title},
      WRITER = #{writer},
      START1 = #{start},
      END1 = #{end},
      CONTENT = #{content},
      BACKGROUND_COLOR = #{backgroundColor},
      TEXT_COLOR = #{textColor},
      ALL_DAY = #{allDay},
      URL_LINK = #{urlLink}
 WHERE id = #{id}
@Update("")
int calUpdate(Calendar upt); 
 
@Delete("DELETE FROM CALENDAR  WHERE id = #{id}")
int calDelete(@Param("id") int id);
 
 * */
DELETE FROM CALENDAR  WHERE id = 14;













