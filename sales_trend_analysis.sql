CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);

INSERT INTO online_sales VALUES
(1,'2025-01-05',500,101),
(2,'2025-01-10',300,102),
(3,'2025-02-12',700,103),
(4,'2025-02-20',400,104),
(5,'2025-03-15',900,105),
(6,'2025-03-18',600,106);

SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;