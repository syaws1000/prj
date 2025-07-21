CREATE TABLE NEW_BOARD (
    POST_ID NUMBER PRIMARY KEY,          -- 게시글 번호 (기본키)
    TITLE VARCHAR2(100),                 -- 제목
    CONTENT CLOB,                        -- 내용 (CLOB 사용, 글 길이가 길어지므로)
    AUTHOR VARCHAR2(50),                 -- 작성자
    VIEW_COUNT NUMBER DEFAULT 0,         -- 조회수 (기본값 0)
    CREATE_DATE DATE DEFAULT SYSDATE,    -- 등록일 (기본값 현재 날짜)
    UPDATE_DATE DATE,                    -- 수정일
    PARENT_POST_ID NUMBER,               -- 답글의 경우 상위 게시글 번호
    STATUS VARCHAR2(20) DEFAULT 'ACTIVE' -- 게시글 상태 (예: ACTIVE, DELETED 등)
);
CREATE TABLE NEW_COMMENT (
    COMMENT_ID NUMBER PRIMARY KEY,        -- 댓글 번호 (기본키)
    POST_ID NUMBER,                       -- 게시글 번호 (외래키)
    COMMENT_TEXT CLOB,                    -- 댓글 내용
    AUTHOR VARCHAR2(50),                  -- 댓글 작성자
    CREATE_DATE DATE DEFAULT SYSDATE,     -- 댓글 등록일
    PARENT_COMMENT_ID NUMBER,             -- 답글의 경우 상위 댓글 번호
    FOREIGN KEY (POST_ID) REFERENCES NEW_BOARD (POST_ID) -- 외래키
);

CREATE TABLE NEW_FILE (
    FILE_ID NUMBER PRIMARY KEY,           -- 파일 번호 (기본키)
    POST_ID NUMBER,                       -- 게시글 번호 (외래키)
    FILE_NAME VARCHAR2(255),              -- 파일 이름
    FILE_PATH VARCHAR2(255),              -- 파일 경로
    FILE_SIZE NUMBER,                     -- 파일 크기
    CREATE_DATE DATE DEFAULT SYSDATE,     -- 파일 등록일
    FOREIGN KEY (POST_ID) REFERENCES NEW_BOARD (POST_ID) -- 외래키
);


;-- 게시판 시퀀스
CREATE SEQUENCE NEW_BOARD_SEQ START WITH 1 INCREMENT BY 1;

-- 댓글 시퀀스
CREATE SEQUENCE NEW_COMMENT_SEQ START WITH 1 INCREMENT BY 1;

-- 파일 시퀀스
CREATE SEQUENCE NEW_FILE_SEQ START WITH 1 INCREMENT BY 1;

INSERT INTO NEW_BOARD (POST_ID, TITLE, CONTENT, AUTHOR, CREATE_DATE)
VALUES (NEW_BOARD_SEQ.NEXTVAL, '게시글 제목', '게시글 내용', '작성자명', SYSDATE);
INSERT INTO NEW_COMMENT (COMMENT_ID, POST_ID, COMMENT_TEXT, AUTHOR, CREATE_DATE)
VALUES (NEW_COMMENT_SEQ.NEXTVAL, 1, '댓글 내용', '댓글 작성자', SYSDATE);
INSERT INTO NEW_COMMENT (COMMENT_ID, POST_ID, COMMENT_TEXT, AUTHOR, CREATE_DATE, PARENT_COMMENT_ID)
VALUES (NEW_COMMENT_SEQ.NEXTVAL, 1, '답글 내용', '답글 작성자', SYSDATE, 1);
INSERT INTO NEW_FILE (FILE_ID, POST_ID, FILE_NAME, FILE_PATH, FILE_SIZE, CREATE_DATE)
VALUES (NEW_FILE_SEQ.NEXTVAL, 1, '파일명.jpg', '/path/to/file', 1024, SYSDATE);


SELECT * FROM NEW_BOARD;


-- SEQUENCE 생성
CREATE SEQUENCE board2_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

-- 테이블 생성
CREATE TABLE board2 (
    board_id NUMBER PRIMARY KEY,
    title VARCHAR2(100),
    content CLOB,
    author VARCHAR2(50),
    created_at date DEFAULT sysdate
);

-- 게시물 1 추가
INSERT INTO board2 (board_id, title, content, author) VALUES (board2_seq.nextval, '첫 번째 게시물', '안녕하세요! 오늘 날씨가 참 좋네요.', 'UserA');

-- 게시물 2 추가
INSERT INTO board2 (board_id, title, content, author) VALUES (board2_seq.nextval, '두 번째 게시물', '이번 주말에는 여행을 가볼까 고민 중입니다.', 'UserB');

-- 게시물 3 추가
INSERT INTO board2 (board_id, title, content, author) VALUES (board2_seq.nextval, '세 번째 게시물', '오늘은 공부하기 딱 좋은 날씨네요.', 'UserC');
SELECT * FROM board2;







