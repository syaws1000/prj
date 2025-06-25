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
INSERT INTO announce (board_id, title, content, parent_id, author, created_at, updated_at, status, views, comment_count)
VALUES (ANNOUNCE_SEQ.NEXTVAL, '다섯 번째 게시글 (삭제)', '삭제된 상태의 게시글입니다.', NULL, '정현우', SYSDATE, SYSDATE, '삭제', 0, 0);

COMMIT;
SELECT * FROM ANNOUNCE;
SELECT * FROM ANNOUNCE WHERE TITLE LIKE '%%' AND AUTHOR LIKE '%%';
/*
@Select("SELECT * FROM ANNOUNCE WHERE TITLE LIKE #{title} AND AUTHOR LIKE #{author}")
List<Announce> getAnnounceList(AnnounceSch sch);
 * */

