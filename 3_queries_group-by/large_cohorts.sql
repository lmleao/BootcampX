SELECT cohorts.name AS cohort_name, COUNT(DISTINCT students.id) AS student_count
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING COUNT(DISTINCT students.id) >= 18
ORDER BY student_count;