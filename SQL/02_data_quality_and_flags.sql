-- Data Quality & Flag
--- a) Row count 
SELECT 
  COUNT(*) AS total_loans
FROM loans_cleaned;

--- b) Missing values
SELECT 
    SUM(CASE WHEN emp_title IS NULL OR emp_title = '' THEN 1 ELSE 0 END) AS missing_emp_title,
FROM loans_cleaned;

--- c) Basic distributions
SELECT MIN(issue_date), MAX(issue_date) FROM loans_cleaned;
SELECT MIN(int_rate), MAX(int_rate) FROM loans_cleaned;
SELECT MIN(dti), MAX(dti) FROM loans_cleaned;
