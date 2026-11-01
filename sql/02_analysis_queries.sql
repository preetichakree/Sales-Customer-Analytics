USE retail_analytics;

-- 1. Overall Business Performance
SELECT
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    SUM(quantity) AS total_units_sold,
    ROUND(SUM(sales_amount), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit
FROM sales;


-- 2. Monthly Sales Trend
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS sales_month,
    ROUND(SUM(sales_amount), 2) AS monthly_revenue,
    ROUND(SUM(profit), 2) AS monthly_profit
FROM sales
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY sales_month;


-- 3. Category Performance
SELECT
    category,
    SUM(quantity) AS units_sold,
    ROUND(SUM(sales_amount), 2) AS revenue,
    ROUND(SUM(profit), 2) AS profit
FROM sales
GROUP BY category
ORDER BY revenue DESC;


-- 4. Top 10 Customers
SELECT
    customer_id,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(sales_amount), 2) AS total_spending
FROM sales
GROUP BY customer_id
ORDER BY total_spending DESC
LIMIT 10;


-- 5. Regional Sales Performance
SELECT
    region,
    ROUND(SUM(sales_amount), 2) AS revenue,
    ROUND(SUM(profit), 2) AS profit
FROM sales
GROUP BY region
ORDER BY revenue DESC;


-- 6. Sales Channel Analysis
SELECT
    sales_channel,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(sales_amount), 2) AS revenue
FROM sales
GROUP BY sales_channel
ORDER BY revenue DESC;


-- 7. Repeat Customer Analysis
SELECT
    customer_id,
    COUNT(DISTINCT order_id) AS order_count,
    ROUND(SUM(sales_amount), 2) AS total_spending
FROM sales
GROUP BY customer_id
HAVING COUNT(DISTINCT order_id) > 1
ORDER BY order_count DESC;


-- 8. Data Quality Checks
SELECT *
FROM sales
WHERE order_id IS NULL
   OR customer_id IS NULL
   OR sales_amount < 0
   OR quantity <= 0;
