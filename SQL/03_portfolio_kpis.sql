-- a) Overall KPIs
select 
	count(*)           AS total_applications,
	sum(loan_amount)   AS total_funded_amount,
	sum(total_payment) AS total_received_amount,
	avg(int_rate)      AS avg_interest_rate,
	avg(dti) 		   AS avg_dti
from loans_cleaned;

-- b) Good vs Bad breakdown
SELECT
    loan_category,
    COUNT(*) AS num_loans,
    SUM(loan_amount) AS funded_amount,
    SUM(total_payment) AS received_amount,
    100.0 * COUNT(*) / (SELECT COUNT(*) FROM loans_cleaned) AS pct_of_loans
FROM loans_cleaned
GROUP BY loan_category;

--c) Loan status (Fully Paid / Charged Off / Current)
SELECT
    loan_status,
    COUNT(*) AS num_loans,
    SUM(loan_amount) AS funded_amount,
    SUM(total_payment) AS received_amount
FROM loans_cleaned
GROUP BY loan_status
ORDER BY num_loans DESC;






