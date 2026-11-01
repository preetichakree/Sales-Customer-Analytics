USE retail_analytics;

-- Create Customers table
CREATE TABLE IF NOT EXISTS customers (
    customer_id VARCHAR(12) PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    customer_segment VARCHAR(30)
);

-- Insert sample customers
INSERT IGNORE INTO customers VALUES
('C001', 'Aarav Sharma', 'Pune', 'Regular'),
('C002', 'Riya Patel', 'Mumbai', 'Premium'),
('C003', 'Rahul Verma', 'Delhi', 'Regular'),
('C004', 'Sneha Joshi', 'Pune', 'Premium'),
('C005', 'Karan Mehta', 'Mumbai', 'Regular'),
('C006', 'Ananya Rao', 'Bangalore', 'Regular'),
('C007', 'Vikram Shah', 'Delhi', 'Premium'),
('C008', 'Neha Kulkarni', 'Pune', 'Regular');


-- Create Products table
CREATE TABLE IF NOT EXISTS products (
    product_id VARCHAR(8) PRIMARY KEY,
    product_name VARCHAR(80),
    category VARCHAR(40),
    unit_price DECIMAL(12,2)
);

-- Insert sample products
INSERT IGNORE INTO products VALUES
('P001', 'Laptop', 'Electronics', 55000),
('P002', 'Headphones', 'Electronics', 2500),
('P003', 'Office Chair', 'Furniture', 8000),
('P004', 'Keyboard', 'Electronics', 1500),
('P005', 'Desk', 'Furniture', 12000),
('P006', 'Notebook', 'Stationery', 100),
('P007', 'Mouse', 'Electronics', 800),
('P008', 'Books', 'Stationery', 400);
