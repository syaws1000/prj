CREATE TABLE I18N_MESSAGE (
    ID        NUMBER PRIMARY KEY,
    CODE      VARCHAR2(100),      -- 메시지 코드 (예: greeting)
    LOCALE    VARCHAR2(10),       -- 언어 코드 (예: ko, en, ja)
    MESSAGE   VARCHAR2(1000)      -- 실제 메시지 내용
);

-- 샘플 데이터
INSERT INTO I18N_MESSAGE VALUES (1, 'greeting', 'ko', '안녕하세요');
INSERT INTO I18N_MESSAGE VALUES (2, 'greeting', 'en', 'Hello');
SELECT * FROM I18N_MESSAGE inm;