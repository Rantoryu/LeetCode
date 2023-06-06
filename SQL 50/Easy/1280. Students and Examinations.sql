SELECT p.student_id,p.student_name,s.subject_name,
SUM(IF(p.student_id = e.student_id AND s.subject_name = e.subject_name,1,0)) attended_exams
FROM Students p,Subjects s,Examinations e
GROUP BY p.student_id,s.subject_name
ORDER BY 1,3;