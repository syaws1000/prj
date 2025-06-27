		CREATE TABLE BOARD(
			NO NUMBER PRIMARY KEY,  -- 글번호(기본키)
			REFNO NUMBER,  -- 답글번호
			SUBJECT VARCHAR2(100),  -- 제목
			CONTENT VARCHAR2(1000), -- 내용
			WRITER VARCHAR2(50), -- 작성자
			READCNT NUMBER, -- 조회수
			REGDTE DATE, -- 등록일
			UPTDTE DATE  -- 수정일
		);
		
		CREATE TABLE ANNOUNCEFILE(
			NO NUMBER,
			FNAME VARCHAR2(100),
			ETC VARCHAR2(500),
			REGDTE DATE,
			UPTDTE DATE
		);
		CREATE SEQUENCE BOARD_SEQ;
		INSERT INTO BOARD VALUES(BOARD_SEQ.NEXTVAL,0,'첫번째글','내용없음','홍길동',0,SYSDATE, SYSDATE);
		
		SELECT * FROM BOARD;
		
		SELECT * FROM BOARD WHERE SUBJECT LIKE '%%' AND WRITER LIKE '%%';
		/*
		입력 : String subject, String writer ==> class BoardSch
		출력값 : int no; int refno; String subject; String content, String writer; int readcnt;
		       Date regdte; Date uptdte; ==> class Board ==> List<Board>
		@Select("SELECT * FROM BOARD WHERE SUBJECT LIKE #{subject} AND WRITER LIKE #{writer}")
		List<Board> getBoardList(@Param("subject")String subject, @Param("writer") String writer);   
		INSERT INTO BOARD VALUES(BOARD_SEQ.NEXTVAL,0,'첫번째글','내용없음','홍길동',0,SYSDATE, SYSDATE);
		
		등록 처리
		@Insert("INSERT INTO BOARD VALUES(BOARD_SEQ.NEXTVAL,#{refno},#{subject},#{content},#{writer},0,SYSDATE, SYSDATE)")
		int insertBoard(Board ins);    
		            
		       
		 * */
SELECT * FROM BOARD;		
INSERT INTO BOARDFILE VALUES(2, 'img10.jpg', '두번째글', SYSDATE, SYSDATE);		
INSERT INTO BOARDFILE VALUES(3, 'img11.jpg', '세번째글', SYSDATE, SYSDATE);		
SELECT * FROM BOARDFILE;
/*
class FileDto{
	private int no;
	private String fname;
	private String etc;
	private Date regdte;
	private Date uptdte;
	
}
@Insert("INSERT INTO BOARDFILE VALUES(#{no}, #{fname}, #{etc}, SYSDATE, SYSDATE)")
int insertFile(FileDto ins);
 * */
SELECT BOARD_SEQ.NEXTVAL FROM DUAL;		

SELECT BOARD_SEQ.CURRVAL FROM DUAL;


SELECT * FROM BOARDFILE;


