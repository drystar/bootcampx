-- Perform the same query as before, but include the number of assistances as well.

SELECT teachers.name as teacher, cohorts.name as cohort, COUNT(assistance_requests) AS total_number_of_assistances
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teacher;

