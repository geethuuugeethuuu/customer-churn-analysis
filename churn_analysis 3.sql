SELECT
    ROUND(SUM(CASE WHEN ChurnFlag = 1 THEN MonthlyCharges ELSE 0 END), 0) AS monthly_revenue_lost,
    ROUND(SUM(CASE WHEN ChurnFlag = 1 THEN MonthlyCharges ELSE 0 END) * 12, 0) AS annual_revenue_lost,
    ROUND(SUM(MonthlyCharges), 0) AS total_monthly_revenue,
    ROUND(100.0 * SUM(CASE WHEN ChurnFlag = 1 THEN MonthlyCharges ELSE 0 END) / SUM(MonthlyCharges), 1) AS pct_revenue_lost
FROM customers;