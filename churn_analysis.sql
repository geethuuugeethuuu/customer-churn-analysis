SELECT
    Contract,
    COUNT(*) AS customers,
    SUM(ChurnFlag) AS churned,
    ROUND(100.0 * SUM(ChurnFlag) / COUNT(*), 1) AS churn_rate_pct
FROM customers
GROUP BY Contract
ORDER BY churn_rate_pct DESC;