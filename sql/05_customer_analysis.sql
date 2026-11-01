USE retail_analytics;

-- Customer purchase analysis
SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    c.customer_segment,
    COUNT(s.order_id) AS total_orders,
    SUM(s.sales_amount) AS total_spending
FROM customers c
INNER JOIN sales s
    ON c.customer_id = s.customer_id
GROUP BY
    c.customer_id,
    c.customer_name,
    c.city,
    c.customer_segment
ORDER BY total_spending DESC;
