USE retail_analytics;

-- 1. INNER JOIN: Customer purchase details
SELECT
    s.customer_id,
    s.order_id,
    s.order_date,
    s.product_name,
    s.sales_amount
FROM sales s
INNER JOIN (
    SELECT DISTINCT customer_id
    FROM sales
) c
ON s.customer_id = c.customer_id;


-- 2. Subquery: Orders above average sales
SELECT
    order_id,
    customer_id,
    sales_amount
FROM sales
WHERE sales_amount > (
    SELECT AVG(sales_amount)
    FROM sales
);


-- 3. CTE: Category-wise revenue
WITH category_summary AS (
    SELECT
        category,
        SUM(sales_amount) AS revenue,
        SUM(profit) AS profit
    FROM sales
    GROUP BY category
)
SELECT *
FROM category_summary
ORDER BY revenue DESC;


-- 4. Window Function: Rank customers by spending
SELECT
    customer_id,
    total_spending,
    RANK() OVER (
        ORDER BY total_spending DESC
    ) AS customer_rank
FROM (
    SELECT
        customer_id,
        SUM(sales_amount) AS total_spending
    FROM sales
    GROUP BY customer_id
) customer_sales;


-- 5. Running monthly revenue
WITH monthly_summary AS (
    SELECT
        DATE_FORMAT(order_date, '%Y-%m') AS sales_month,
        SUM(sales_amount) AS monthly_revenue
    FROM sales
    GROUP BY DATE_FORMAT(order_date, '%Y-%m')
)
SELECT
    sales_month,
    monthly_revenue,
    SUM(monthly_revenue) OVER (
        ORDER BY sales_month
    ) AS running_revenue
FROM monthly_summary;
