-- Q2: How many hospital admissions had more than 10 diagnoses?
-- Ans: 185

SELECT COUNT(*)
FROM (
  SELECT hadm_id, COUNT(*) AS n
  FROM diagnoses_icd
  GROUP BY hadm_id
  HAVING COUNT(*) > 10
); 
