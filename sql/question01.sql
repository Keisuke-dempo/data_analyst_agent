-- Q1: How many patients had more than one hospital admission?
-- Ans: 48
SELECT COUNT(*)
FROM (
  SELECT subject_id, COUNT(*) AS n
  FROM admissions
  GROUP BY subject_id
  HAVING COUNT(*) > 1
);
