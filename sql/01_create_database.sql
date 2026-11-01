-- Create the project database
CREATE DATABASE IF NOT EXISTS retail_analytics;

USE retail_analytics;

-- Create sales table
CREATE TABLE IF NOT EXISTS sales (
    order_id VARCHAR(12) PRIMARY KEY,
    order_date DATE NOT NULL,
    customer_id VARCHAR(12) NOT NULL,
    product_id VARCHAR(8) NOT NULL,
    product_name VARCHAR(80) NOT NULL,
    category VARCHAR(40) NOT NULL,
    region VARCHAR(20) NOT NULL,
    sales_channel VARCHAR(20) NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(12,2) NOT NULL,
    discount_pct DECIMAL(5,2) NOT NULL,
    sales_amount DECIMAL(14,2) NOT NULL,
    cost_amount DECIMAL(14,2) NOT NULL,
    profit DECIMAL(14,2) NOT NULL
);
