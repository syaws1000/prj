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



SELECT * FROM MEMBER WHERE ID='himan' AND PWD = '7777';
/*
class Memeber
	private String id;
	private String pwd;
	private String name;
	private String auth;
	private int point;
	
@Select("SELECT * FROM MEMBER WHERE ID=#{id} AND PWD = #{pwd}")
Member login(Member sch);	

	
 * */

-- 상세 dao 처리
SELECT * FROM BOARD WHERE NO = 8;
-- 파일 dao 처리
SELECT * FROM BOARDFILE WHERE NO = 8;
/*
@Select("SELECT * FROM BOARD WHERE NO = #{no}")
Board getBoard(@Param("no") int no);

@Select("SELECT * FROM BOARDFILE WHERE NO = #{no}")
List<FileDto> getFile(@Param("no") int no);



**/
SELECT * FROM board;
-- 읽을 때 마다, READCNT 변경
UPDATE BOARD SET READCNT = READCNT+1 WHERE NO = 1;
/*
@Update("UPDATE BOARD SET READCNT = READCNT+1 WHERE NO = #{no}")
int uptReadCnt(@Param("no")int no)
 * */
-- 수정처리
UPDATE BOARD
	SET SUBJECT = '수정합니다.',
	    CONTENT = '내용 변경',
	    UPTDTE = SYSDATE
WHERE NO = 1;
/*
@Update("UPDATE BOARD SET READCNT = READCNT+1 WHERE NO = #{no}")
int uptReadCnt(@Param("no")int no)
UPDATE BOARD
	SET SUBJECT = #{subject},
	    CONTENT = #{content},
	    UPTDTE = SYSDATE
WHERE NO = #{no}
@Update("")
int updateBoard(Board upt) 
@Delete("DELETE FROM BOARD WHERE NO = #{no}")
int deleteBoard(@Param("no") int no);

 * */
-- 삭제처리
DELETE FROM BOARD WHERE NO = #{no}
;
/*

위 SQL DAO 작성    uptReadCnt(),   updateBoard(),  deleteBoard()

 * */

/*
1. 게시판 기본 정보 등록..
2. 파일첨부 테이블 정보 등록

 * */
SELECT * FROM board;
SELECT * FROM boardFile;

CREATE TABLE boardexp01
AS SELECT * FROM board WHERE 1=0;

CREATE TABLE boardFileexp01
AS SELECT * FROM boardFile WHERE 1=0;

SELECT * FROM boardexp01;
SELECT * FROM boardFileexp01;
CREATE SEQUENCE boardexp01_seq;

INSERT INTO boardexp01 values(boardexp01_seq.nextval, 0,'첫글등록','내용','홍길동',0,sysdate,sysdate);
INSERT INTO boardFileexp01 values(boardexp01_seq.currval,'aaa.jpg','첫글등록 첨부파일', sysdate, sysdate);
/*
# 게시판 등록화면을 통해서 첨부파일도 함께 등록 처리되는 내용..
@Insert("INSERT INTO boardexp01 values(boardexp01_seq.nextval, #{refno},#{subject},#{content},#{writer},0,sysdate,sysdate)")
int insertBoardexp01(Board ins);

@Insert("INSERT INTO boardFileexp01 values(boardexp01_seq.currval,#{fname},#{etc}, sysdate, sysdate)")
int insertBoardFileepx01(BoardFile ins);



	private int no; 
	private int refno; 
	private String subject; 
	private String content;
	private String writer;
	private int readcnt;
	private Date regdte; 
	private Date uptdte;
# 개발 순서
1. dao
	기본 정보 등록 
		등록 sql 
		메서드 선언
    파일 정보 등록 
    	등록 sql
    	메서드 선언
    
    
    
2. service
	1) 기본 정보 등록
	2) 파일 업로드 처리
	3) 파일 정보 등록 처리
3. controller
    0) 등록 화면 로딩
	1) 요청으로 Board로 
		기본 정보등록 처리..
4. view
	1) 등록 화면  처리...
	

 * */
-- 계층적 sql 처리  ROWNUM : 번호를 순차적으로 표현하기 위해 데이터의 고유 행번호 출력
-- LEVEL : 계층 레벨을 표현 기본이 1레벨 하위 계층이면 2레벨 등으로 표현..
-- 
SELECT ROWNUM CNT, LEVEL, B.* 
FROM BOARD B
WHERE SUBJECT LIKE '%%' 
AND WRITER LIKE '%%'
START WITH refno = 0
CONNECT BY PRIOR NO = refno
ORDER SIBLINGS BY NO DESC;

SELECT ROWNUM CNT, LEVEL, B.*
FROM ANNOUNCE B
WHERE TITLE  LIKE '%%'
AND AUTHOR  LIKE '%%'
START WITH PARENT_ID =0
CONNECT BY PRIOR BOARD_ID = PARENT_ID 
ORDER SIBLINGS BY BOARD_ID DESC;
/*
SELECT ROWNUM CNT, LEVEL, B.*
FROM ANNOUNCE B
WHERE TITLE  LIKE #{title}
AND AUTHOR  LIKE #{author}
START WITH PARENT_ID =0
CONNECT BY PRIOR BOARD_ID = PARENT_ID 
ORDER SIBLINGS BY BOARD_ID DESC
 * */


;
/*
SELECT ROWNUM CNT, LEVEL, B.* 
FROM BOARD B
WHERE SUBJECT LIKE #{subject}
AND WRITER LIKE #{writer}
START WITH refno = 0
CONNECT BY PRIOR NO = refno
ORDER SIBLINGS BY NO DESC
 * */
-- 총건수 처리
SELECT COUNT(*)
FROM BOARD B
WHERE SUBJECT LIKE '%%' 
AND WRITER LIKE '%%'
START WITH refno = 0
CONNECT BY PRIOR NO = refno;
/*
SELECT COUNT(*)
FROM BOARD B
WHERE SUBJECT LIKE #{subject}
AND WRITER LIKE #{writer}
START WITH refno = 0
CONNECT BY PRIOR NO = refno

@Select("")
int getBoardTot(BoardSch sch);

 * */
SELECT *
FROM (
SELECT ROWNUM CNT, LEVEL, B.* 
FROM BOARD B
WHERE SUBJECT LIKE '%%'
AND WRITER LIKE '%%'
START WITH refno = 0
CONNECT BY PRIOR NO = refno
ORDER SIBLINGS BY NO DESC )
WHERE CNT BETWEEN 6 AND 10;
/*
SELECT *
FROM (
SELECT ROWNUM CNT, LEVEL, B.* 
FROM BOARD B
WHERE SUBJECT LIKE #{subject}
AND WRITER LIKE #{writer}
START WITH refno = 0
CONNECT BY PRIOR NO = refno
ORDER SIBLINGS BY NO DESC )
WHERE CNT BETWEEN #{start} AND #{end}
 * */













