# Task 6: Sales Trend Analysis Using Aggregations

## Objective
Analyze monthly revenue and order volume using SQL aggregate functions.

## Tools Used
- MySQL / PostgreSQL / SQLite
- GitHub

## Dataset
online_sales table containing:
- order_id
- order_date
- amount
- product_id

## SQL Concepts Used
- SUM()
- COUNT(DISTINCT)
- GROUP BY
- ORDER BY
- Aggregate Functions

## SQL Query

```sql
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;
```

## Results

| Year | Month | Monthly Revenue | Order Volume |
|------|--------|-----------------|--------------|
| 2025 | 1 | 800 | 2 |
| 2025 | 2 | 1100 | 2 |
| 2025 | 3 | 1500 | 2 |

## Outcome
Successfully analyzed monthly sales trends by calculating:
- Total monthly revenue
- Monthly order volume

This task helped in understanding SQL aggregation, grouping, and trend analysis techniques.

VISHALI S
