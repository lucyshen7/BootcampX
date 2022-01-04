SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id::integer
JOIN cohorts ON cohorts.id = cohort_id::integer
WHERE cohorts.name = 'FEB12';