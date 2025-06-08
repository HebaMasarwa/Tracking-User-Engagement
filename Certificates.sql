
select 
	c.student_id,
	c.certificates_issued,
	 IF(svw.seconds_watched IS NULL,
        0,
        ROUND(SUM(seconds_watched) / 60, 2))
        as minutes_watched
from
(
SELECT 
  student_id, 
  COUNT(certificate_id) AS certificates_issued 
FROM 
  student_certificates 
group by student_id
) c
left join student_video_watched svw 
on c.student_id  = svw.student_id
group by c.student_id