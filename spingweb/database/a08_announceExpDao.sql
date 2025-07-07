-- 게시판 테이블 생성
CREATE TABLE announce (
    board_id NUMBER PRIMARY KEY,              -- 게시글 고유 ID
    title VARCHAR2(100) NOT NULL,             -- 게시글 제목
    content CLOB NOT NULL,                    -- 게시글 내용 (CLOB 데이터타입으로 긴 내용 저장)
    parent_id NUMBER,                         -- 부모 게시글 ID (자식일 경우, 최상위 게시글은 NULL)
    author VARCHAR2(50) NOT NULL,             -- 작성자
    created_at DATE,                          -- 작성일자
    updated_at DATE,                          -- 수정일자
    status VARCHAR2(20) DEFAULT '공개',       -- 게시글 상태 (공개/비공개/삭제 등)
    views NUMBER DEFAULT 0,                   -- 조회수
    comment_count NUMBER DEFAULT 0            -- 댓글 수
);
/* 
class Announce{
     private int BoardId;
     private String title;
     private String content;
     private int parentId;
     private String author;
     private Date createAt;
     private Date updatedAt;
     private String status;
     private int  views;
     private int commentCount;
}
class AnnounceSch{
     private String title;
     private String author;     
}
 * 
 * */



CREATE SEQUENCE ANNOUNCE_SEQ;
-- 첫 번째 게시글 삽입
INSERT INTO announce (board_id, title, content, parent_id, author, created_at, updated_at, status, views, comment_count)
VALUES (ANNOUNCE_SEQ.NEXTVAL, '첫 번째 게시글', '첫 번째 게시글의 내용입니다.', NULL, '홍길동', SYSDATE, SYSDATE, '공개', 100, 5);

-- 두 번째 게시글 삽입 (댓글로 작성)
INSERT INTO announce (board_id, title, content, parent_id, author, created_at, updated_at, status, views, comment_count)
VALUES (ANNOUNCE_SEQ.NEXTVAL, '첫 번째 게시글에 대한 댓글', '첫 번째 게시글에 대한 댓글입니다.', 1, '김철수', SYSDATE, SYSDATE, '공개', 50, 3);

-- 세 번째 게시글 삽입 (댓글로 작성)
INSERT INTO announce (board_id, title, content, parent_id, author, created_at, updated_at, status, views, comment_count)
VALUES (ANNOUNCE_SEQ.NEXTVAL, '첫 번째 게시글에 대한 댓글 2', '두 번째 댓글입니다.', 1, '박지훈', SYSDATE, SYSDATE, '공개', 20, 1);

-- 네 번째 게시글 삽입 (상위 게시글 없이 최상위 게시글)
INSERT INTO announce (board_id, title, content, parent_id, author, created_at, updated_at, status, views, comment_count)
VALUES (ANNOUNCE_SEQ.NEXTVAL, '네 번째 게시글', '네 번째 게시글의 내용입니다.', NULL, '이수연', SYSDATE, SYSDATE, '공개', 120, 10);

-- 다섯 번째 게시글 삽입 (삭제된 상태)
INSERT INTO announce  VALUES (ANNOUNCE_SEQ.NEXTVAL, '다섯 번째 게시글 (삭제)', '삭제된 상태의 게시글입니다.', NULL, '정현우', SYSDATE, SYSDATE, '삭제', 0, 0);

COMMIT;
SELECT * FROM ANNOUNCE;
SELECT * FROM ANNOUNCE WHERE TITLE LIKE '%%' AND AUTHOR LIKE '%%';
/*
@Select("SELECT * FROM ANNOUNCE WHERE TITLE LIKE #{title} AND AUTHOR LIKE #{author}")
List<Announce> getAnnounceList(AnnounceSch sch);
 * */
		CREATE TABLE ANNOUNCE_FILE(
			NO NUMBER,
			FNAME VARCHAR2(100),
			ETC VARCHAR2(500),
			REGDTE DATE,
			UPTDTE DATE
		);
SELECT ANNOUNCE_SEQ.NEXTVAL, ANNOUNCE_SEQ.CURRVAL FROM DUAL;
-- class AnnFileDto
-- 기본 등록, 파일 등록
/*
INSERT INTO announce  VALUES (ANNOUNCE_SEQ.NEXTVAL, '다섯 번째 게시글 (삭제)', '삭제된 상태의 게시글입니다.', NULL, '정현우', SYSDATE, SYSDATE, '삭제', 0, 0)
@Insert("INSERT INTO announce  VALUES (ANNOUNCE_SEQ.NEXTVAL, #{title}, #{content}, #{parentId}, #{author}, SYSDATE, SYSDATE, #{status}, 0, 0)")
int insertAnnounce(Announce ins);

@Insert("INSERT INTO ANNOUNCE_FILE VALUES(ANNOUNCE_SEQ.CURRVAL, 'img10.jpg', '두번째글', SYSDATE, SYSDATE)")
int insertFile(AnnFileDto ins);



` * */

-- 
/*
1 dao 처리
	ANNOUNCE, ANNOUNCE_FILE 등록 처리
    private int boardId;
    private String title;
    private String content;
    private int parentId;
    private String author;
    private Date createAt;
    private Date updatedAt;
    private String status;
    private int  views;
    private int commentCount;	
	
2. service 처리
	기본 데이터 등록
	DB 등록
3. controller

4. jsp 
	form 화면구형..
	



 * */

select * from ANNOUNCE_FILE;

--
--1. dao 처리
--	1) sql 
--		select * from member10 where id = 'himan' and pwd='7777'
--		login
--	2) DTO 완성..
--	3) 메서드 선언..
--------------------------------------	
CREATE TABLE MEMBER10
AS SELECT * FROM MEMBER;
SELECT * FROM MEMBER10 WHERE ID = 'himan' AND PWD = '7777';
/*

@Select("SELECT * FROM MEMBER10 WHERE ID = #{id} AND PWD = #{pwd}")
Member login(Member sch);
 * */

--	1) 기본 내용 SELECT * FROM announce WHERE NO = 1;
--	2) 첨부 파일 SELECT * FROM ANNOUNCE_FILE WHERE NO = 1;
/*
dao 작성..
**/
SELECT * FROM announce WHERE  board_id= 7;
SELECT FNAME  FROM ANNOUNCE_FILE WHERE NO =7;
/*
@Select("SELECT * FROM announce WHERE  board_id= #{boardId}")
Announce getAnnounce(@Param("boardId") int boardId);

@Select("SELECT * FROM ANNOUNCE_FILE WHERE  NO= #{no}")
AnnFileDto getFile(@Param("no") int no);



 * */
SELECT * FROM announce;
-- 조회수 증가
UPDATE announce SET views = views + 1 WHERE board_id = 7 ;
/*
@Select("UPDATE announce SET views = views + 1 WHERE board_id = #{boardId}")
int readCount(@Param("boardId") int boardId);
 * */
-- 수정 처리 
UPDATE announce
   SET title = '수정',
       content = '수정',
       updated_at = sysdate,
       status = '비공개'
where board_id = 7;       
/*
UPDATE announce
   SET title = #{title},
       content = #{content},
       updated_at = sysdate,
       status = #{status}
where board_id = #{boardId}
@Update("")
int updateBoard(Announce upt);

 * */
DELETE FROM announce WHERE board_id = 7;
-- 삭제 처리..
/*
@Select("UPDATE announce SET views = views + 1 WHERE board_id = #{boardId}")
int readCount(@Param("boardId") int boardId);

UPDATE announce
   SET title = #{title},
       content = #{content},
       updated_at = sysdate,
       status = #{status}
where board_id = #{boardId}
@Update("")
int updateBoard(Announce upt);

@Delete("DELETE FROM announce WHERE board_id = #{boardId}")
int deleteBoard(@Param("boardId") int boardId);


 * */



