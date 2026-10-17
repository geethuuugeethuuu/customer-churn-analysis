# Customer Churn and Retention Analysis

End-to-end analysis of a telecom customer base: business requirements, SQL and Python analysis, predictive model, Power BI dashboard, and an ROI-based retention plan.

## Key results
- Churn rate: 26.5%; revenue lost to churn about $1.67M per year
- Month-to-month churn 42.7% vs 2.8% on two-year contracts
- Logistic regression ROC-AUC 0.842 (random forest 0.844)
- Recommended campaign: pilot on 293 high-risk month-to-month customers, expected ROI about 182%; wider rollout reduces churn by about 2.1 points

## Tools
Python (pandas, scikit-learn), SQLite, Power BI

## Folders
- docs: BRD and recommendations
- data: dataset (Telco Customer Churn, Kaggle)
- notebooks: cleaning, CLV, model, ROI
- sql: churn_analysis.sql
- dashboard: Power BI file and screenshot

## Limitations
Churn period is not stated in the dataset; the success rate and offer cost are assumptions; scores come from a model trained on most of the same customers.