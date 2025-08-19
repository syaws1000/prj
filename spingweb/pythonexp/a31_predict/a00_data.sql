-- 1. 고객 정보 테이블
CREATE TABLE customers2 (
    user_id   VARCHAR2(50) PRIMARY KEY, -- 고객 ID
    age       NUMBER,                   -- 나이
    join_date DATE                      -- 가입일
);

-- 2. 구매 내역 테이블
CREATE TABLE purchases2 (
    purchase_id     NUMBER PRIMARY KEY, -- 구매 ID 
    user_id         VARCHAR2(50),                 -- 고객 ID (customers 테이블과 연결)
    purchase_date   DATE,                         -- 구매일
    purchase_amount NUMBER                       -- 구매 금액
);
CREATE SEQUENCE purchases2_seq;

-- 고객 정보 입력
INSERT INTO customers2 (user_id, age, join_date) VALUES ('1', 28, TO_DATE('2023-01-15', 'YYYY-MM-DD'));
INSERT INTO customers2 (user_id, age, join_date) VALUES ('3', 45, TO_DATE('2022-05-20', 'YYYY-MM-DD'));
INSERT INTO customers2 (user_id, age, join_date) VALUES ('5', 21, TO_DATE('2024-03-10', 'YYYY-MM-DD'));
INSERT INTO customers2 (user_id, age, join_date) VALUES ('8', 33, TO_DATE('2023-08-01', 'YYYY-MM-DD'));
INSERT INTO customers2 (user_id, age, join_date) VALUES ('10', 29, TO_DATE('2022-11-11', 'YYYY-MM-DD'));
INSERT INTO customers2 (user_id, age, join_date) VALUES ('12', 38, TO_DATE('2021-02-01', 'YYYY-MM-DD'));
INSERT INTO customers2 (user_id, age, join_date) VALUES ('15', 52, TO_DATE('2024-05-01', 'YYYY-MM-DD'));
INSERT INTO customers2 (user_id, age, join_date) VALUES ('20', 41, TO_DATE('2023-04-15', 'YYYY-MM-DD'));

-- 구매 내역 입력 (2024-07-01 이전 데이터: 특성 생성용)
INSERT INTO purchases2  VALUES (purchases2_seq.nextval, '1', TO_DATE('2024-01-10', 'YYYY-MM-DD'), 100000);
INSERT INTO purchases2  VALUES (purchases2_seq.nextval, '1', TO_DATE('2024-03-15', 'YYYY-MM-DD'), 150000);
INSERT INTO purchases2  VALUES (purchases2_seq.nextval, '1', TO_DATE('2024-06-20', 'YYYY-MM-DD'), 250000);
INSERT INTO purchases2 VALUES (purchases2_seq.nextval, '3', TO_DATE('2024-02-05', 'YYYY-MM-DD'), 300000);
INSERT INTO purchases2  VALUES (purchases2_seq.nextval,'3', TO_DATE('2024-04-21', 'YYYY-MM-DD'), 400000);
INSERT INTO purchases2  VALUES (purchases2_seq.nextval,'3', TO_DATE('2024-06-25', 'YYYY-MM-DD'), 500000);
INSERT INTO purchases2  VALUES (purchases2_seq.nextval,'5', TO_DATE('2024-05-15', 'YYYY-MM-DD'), 30000);
-- (이하 다른 데이터들도 TO_DATE 형식으로 입력)

-- 구매 내역 입력 (2024-07-01 이후 3개월 데이터: 정답 데이터용)
INSERT INTO purchases2 (purchase_id, user_id, purchase_date, purchase_amount) VALUES (purchases2_seq.nextval,'1', TO_DATE('2024-07-15', 'YYYY-MM-DD'), 80000);
INSERT INTO purchases2 (purchase_id, user_id, purchase_date, purchase_amount) VALUES (purchases2_seq.nextval,'3', TO_DATE('2024-08-10', 'YYYY-MM-DD'), 150000);
INSERT INTO purchases2 (purchase_id, user_id, purchase_date, purchase_amount) VALUES (purchases2_seq.nextval,'5', TO_DATE('2024-09-01', 'YYYY-MM-DD'), 5000);
-- (이하 다른 데이터들도 TO_DATE 형식으로 입력)

COMMIT;




-- 2025년 5월 19일부터 2025년 8월 19일까지의 구매 데이터 예시
INSERT INTO purchases2 VALUES (purchases2_seq.nextval, '1', TO_DATE('2025-05-22', 'YYYY-MM-DD'), 120000);
INSERT INTO purchases2 VALUES (purchases2_seq.nextval, '3', TO_DATE('2025-05-25', 'YYYY-MM-DD'), 250000);
INSERT INTO purchases2 VALUES (purchases2_seq.nextval, '10', TO_DATE('2025-06-02', 'YYYY-MM-DD'), 85000);
INSERT INTO purchases2 VALUES (purchases2_seq.nextval, '8', TO_DATE('2025-06-10', 'YYYY-MM-DD'), 55000);
INSERT INTO purchases2 VALUES (purchases2_seq.nextval, '12', TO_DATE('2025-06-18', 'YYYY-MM-DD'), 300000);
INSERT INTO purchases2 VALUES (purchases2_seq.nextval, '1', TO_DATE('2025-06-28', 'YYYY-MM-DD'), 95000);
INSERT INTO purchases2 VALUES (purchases2_seq.nextval, '20', TO_DATE('2025-07-05', 'YYYY-MM-DD'), 180000);
INSERT INTO purchases2 VALUES (purchases2_seq.nextval, '5', TO_DATE('2025-07-11', 'YYYY-MM-DD'), 45000);
INSERT INTO purchases2 VALUES (purchases2_seq.nextval, '3', TO_DATE('2025-07-20', 'YYYY-MM-DD'), 280000);
INSERT INTO purchases2 VALUES (purchases2_seq.nextval, '12', TO_DATE('2025-08-02', 'YYYY-MM-DD'), 150000);
INSERT INTO purchases2 VALUES (purchases2_seq.nextval, '10', TO_DATE('2025-08-10', 'YYYY-MM-DD'), 110000);
INSERT INTO purchases2 VALUES (purchases2_seq.nextval, '1', TO_DATE('2025-08-15', 'YYYY-MM-DD'), 135000);

COMMIT;
WITH base_features AS (
    SELECT
        user_id,
        COUNT(purchase_id) AS buyCnt,
        SUM(purchase_amount) AS buyTot,
        MAX(purchase_date) AS last_purchase_date
    FROM purchases2
    WHERE purchase_date < ADD_MONTHS(SYSDATE, -3) 
    GROUP BY user_id
),
target_data AS (
    SELECT
        user_id,
        SUM(purchase_amount) AS actual_future_3m_purchase
    FROM purchases2
    WHERE purchase_date >= ADD_MONTHS(SYSDATE, -3) AND purchase_date < SYSDATE 
    GROUP BY user_id
)
SELECT
    c.user_id AS "userId",
    c.age,
    c.join_date AS "joinDate",
    NVL(bf.buyCnt, 0) AS "buyCnt",
    NVL(bf.buyTot, 0) AS "buyTot",
    bf.last_purchase_date AS "lastPurchaseDate",
    NVL(td.actual_future_3m_purchase, 0) AS "actualFuture3mPurchase"
FROM customers2 c
LEFT JOIN base_features bf ON c.user_id = bf.user_id
LEFT JOIN target_data td ON c.user_id = td.user_id
WHERE c.user_id IN ('1','3','5');