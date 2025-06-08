SELECT 
  a.student_id, 
  a.minutes_watched, 
  IF(
    i.date_start IS NULL, 
    0, 
    MAX(i.paid_q2_2021)
  ) AS paid_in_q2 
FROM 
  (
    SELECT 
      student_id, 
      ROUND(
        SUM(seconds_watched) / 60, 
        2
      ) AS minutes_watched 
    FROM 
      student_video_watched 
    WHERE 
      YEAR(date_watched) = 2021 
    GROUP BY 
      student_id
  ) a 
  LEFT JOIN purchases_info i ON a.student_id = i.student_id 
GROUP BY 
  student_id
HAVING paid_in_q2 = 1; 

SELECT 
  a.student_id, 
  a.minutes_watched, 
  IF(
    i.date_start IS NULL, 
    0, 
    MAX(i.paid_q2_2021)
  ) AS paid_in_q2 
FROM 
  (
    SELECT 
      student_id, 
      ROUND(
        SUM(seconds_watched) / 60, 
        2
      ) AS minutes_watched 
    FROM 
      student_video_watched 
    WHERE 
      YEAR(date_watched) = 2021 
    GROUP BY 
      student_id
  ) a 
  LEFT JOIN purchases_info i ON a.student_id = i.student_id 
GROUP BY 
  student_id
HAVING paid_in_q2 = 0; 


SELECT 
  a.student_id, 
  a.minutes_watched, 
  IF(
    i.date_start IS NULL, 
    0, 
    MAX(i.paid_q2_2022) 
  ) AS paid_in_q2 
FROM 
  (
    SELECT 
      student_id, 
      ROUND(
        SUM(seconds_watched) / 60, 
        2
      ) AS minutes_watched 
    FROM 
      student_video_watched 
    WHERE 
      YEAR(date_watched) = 2022 
    GROUP BY 
      student_id
  ) a 
  LEFT JOIN purchases_info i ON a.student_id = i.student_id 
GROUP BY 
  student_id
HAVING paid_in_q2 = 1;

SELECT 
  a.student_id, 
  a.minutes_watched, 
  IF(
    i.date_start IS NULL, 
    0, 
    MAX(i.paid_q2_2022) 
  ) AS paid_in_q2 
FROM 
  (
    SELECT 
      student_id, 
      ROUND(
        SUM(seconds_watched) / 60, 
        2
      ) AS minutes_watched 
    FROM 
      student_video_watched 
    WHERE 
      YEAR(date_watched) = 2022 
    GROUP BY 
      student_id
  ) a 
  LEFT JOIN purchases_info i ON a.student_id = i.student_id 
GROUP BY 
  student_id
HAVING paid_in_q2 = 0;