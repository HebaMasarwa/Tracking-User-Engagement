DROP VIEW IF EXISTS purchases_info;

CREATE VIEW purchases_info AS
SELECT
    purchase_id,
    student_id,
    plan_id,
    date_start,
    CASE
        WHEN date_refunded IS NOT NULL THEN date_refunded
        ELSE date_end
    END AS date_end,
    CASE
        WHEN (
			date_end >= '2021-04-01' AND date_start <= '2021-06-30'
        ) THEN 1
        ELSE 0
    END AS paid_q2_2021,
    CASE
        WHEN (
			date_end >= '2022-04-01' AND date_start <= '2022-06-30'
        ) THEN 1
        ELSE 0
    END AS paid_q2_2022
FROM (
    SELECT 
        purchase_id,
        student_id,
        plan_id,
        date_purchased AS date_start,
        CASE 	
            WHEN plan_id = 0 THEN DATE_ADD(date_purchased, INTERVAL 1 MONTH)
            WHEN plan_id = 1 THEN DATE_ADD(date_purchased, INTERVAL 3 MONTH)
            WHEN plan_id = 2 THEN DATE_ADD(date_purchased, INTERVAL 12 MONTH)
            ELSE CURDATE()   -- plan_id = 3 (lifetime)
        END AS date_end,
        date_refunded
    FROM student_purchases
) AS sub;

