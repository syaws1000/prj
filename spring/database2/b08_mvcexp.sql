-- 상상 속 세계의 캐릭터 및 사건 테이블 생성
CREATE TABLE Fantasy_Character_Events (
    event_id NUMBER PRIMARY KEY,         -- 사건 ID
    character_name VARCHAR2(100),        -- 캐릭터 이름
    event_description VARCHAR2(500),     -- 사건 설명
    event_status VARCHAR2(50),           -- 사건 진행 상태 (예: 발생, 진행 중, 해결됨)
    event_risk_level VARCHAR2(50),       -- 사건의 위험도 (예: 낮음, 중간, 높음)
    event_date DATE                      -- 사건 발생 일시
);
CREATE SEQUENCE Fantasy_Character_seq;
-- 상상 속 캐릭터 사건 데이터 입력 예시
INSERT INTO Fantasy_Character_Events (event_id, character_name, event_description, event_status, event_risk_level, event_date)
VALUES (Fantasy_Character_seq.nextval, '아르투르', '마법의 검을 찾아 떠나는 모험. 불타는 숲을 지나며 다양한 장애물을 헤쳐나가야 한다.', '진행 중', '높음', TO_DATE('2025-07-01', 'YYYY-MM-DD'));

INSERT INTO Fantasy_Character_Events (event_id, character_name, event_description, event_status, event_risk_level, event_date)
VALUES (Fantasy_Character_seq.nextval, '루나', '달의 에너지를 이용해 불사의 마법을 풀 수 있는 방법을 찾아 나선 여행.', '발생', '중간', TO_DATE('2025-06-15', 'YYYY-MM-DD'));

INSERT INTO Fantasy_Character_Events (event_id, character_name, event_description, event_status, event_risk_level, event_date)
VALUES (Fantasy_Character_seq.nextval, '제피르', '날아다니는 바람의 성을 수호하는 임무. 거대한 폭풍을 막아야 한다.', '진행 중', '높음', TO_DATE('2025-06-20', 'YYYY-MM-DD'));

INSERT INTO Fantasy_Character_Events (event_id, character_name, event_description, event_status, event_risk_level, event_date)
VALUES (Fantasy_Character_seq.nextval, '에이든', '어둠의 마법사와의 마지막 결전을 앞둔 준비가 필요한 상황.', '해결됨', '중간', TO_DATE('2025-06-25', 'YYYY-MM-DD'));

INSERT INTO Fantasy_Character_Events (event_id, character_name, event_description, event_status, event_risk_level, event_date)
VALUES (Fantasy_Character_seq.nextval, '탈리아', '시간의 문을 열기 위한 여정. 과거와 미래의 시간을 넘나들며 사건을 해결한다.', '발생', '낮음', TO_DATE('2025-07-05', 'YYYY-MM-DD'));
SELECT event_id, character_name, event_status, event_risk_level FROM Fantasy_Character_Events
WHERE character_name LIKE '%르%' AND event_status LIKE '%진행%';
SELECT * FROM Fantasy_Character_Events WHERE event_id = 3;





