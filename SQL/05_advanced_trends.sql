-- a) Monthly counts & default volumes
select 
	issue_month,
	SUM(CASE WHEN loan_category = 'Bad Loan' THEN 1 ELSE 0 END) AS bad_loans
from loans_cleaned
group by issue_month
order by issue_month

-- b) MoM growth in funded amount
WITH monthly_funding AS (
    SELECT
        DATE_FORMAT(issue_date, '%Y-%m') AS month,
        SUM(loan_amount) AS total_funded
    FROM loans_cleaned
    GROUP BY DATE_FORMAT(issue_date, '%Y-%m')
)
SELECT
    month,
    total_funded,
    LAG(total_funded) OVER (ORDER BY month) AS prev_month,
    ROUND(
        100.0 * (total_funded - LAG(total_funded) OVER (ORDER BY month))
        / LAG(total_funded) OVER (ORDER BY month),
        2
    ) AS mom_growth_pct
FROM monthly_funding
ORDER BY month;

-- c) by issue year
WITH cohorts AS (
    SELECT
        issue_year,
        loan_category,
        COUNT(*) AS num_loans
    FROM loans_cleaned
    GROUP BY issue_year,loan_category
)
SELECT
    issue_year,
    SUM(CASE WHEN loan_category = 'Good Loan' THEN num_loans END) AS good_loans,
    SUM(CASE WHEN loan_category = 'Bad Loan' THEN num_loans END) AS bad_loans
FROM cohorts
GROUP BY issue_year
ORDER BY issue_year;

