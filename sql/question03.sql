-- Q3: How many hospital admissions were by female patients
-- Ams: 133
SELECT COUNT(*)
FROM patients AS p
JOIN admissions AS a
  ON p.subject_id = a.subject_id
WHERE p.gender = 'F';
