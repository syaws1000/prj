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
;
-- lastPurchaseDate actualFuture3mPurchase

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
                c.join_date,
                NVL(bf.buyCnt, 0) AS buyCnt,
                NVL(bf.buyTot, 0) AS buyTot,
                bf.last_purchase_date,
                NVL(td.actual_future_3m_purchase, 0) AS actual_future_3m_purchase
            FROM customers2 c
            LEFT JOIN base_features bf ON c.user_id = bf.user_id
            LEFT JOIN target_data td ON c.user_id = td.user_id;