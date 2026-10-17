SELECT
    TenureGroup,
    InternetService,
    COUNT(*) AS customers,
    ROUND(100.0 * SUM(ChurnFlag) / COUNT(*), 1) AS churn_rate_pct
FROM customers
GROUP BY TenureGroup, InternetService
ORDER BY churn_rate_pct DESC
LIMIT 5;