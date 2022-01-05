SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id::varchar = cohort_id
GROUP BY cohorts.name
ORDER BY avg(completed_at - started_at) DESC
LIMIT 1;