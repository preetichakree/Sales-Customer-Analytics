# Power BI Sales Dashboard

## Dashboard Objective
Create an interactive dashboard to understand retail sales performance, customer behaviour and profitability.

## Key Performance Indicators (KPIs)

1. Total Revenue
2. Total Profit
3. Total Orders
4. Total Customers
5. Total Units Sold

## Dashboard Visualizations

### 1. Sales Overview
- Card: Total Revenue
- Card: Total Profit
- Card: Total Orders
- Card: Total Customers

### 2. Monthly Sales Trend
- Line chart
- X-axis: Order Month
- Y-axis: Sales Amount

### 3. Category Performance
- Bar chart
- Axis: Category
- Values: Sales Amount

### 4. Regional Performance
- Column chart
- Axis: Region
- Values: Sales Amount

### 5. Customer Analysis
- Table showing Customer ID, Order Count and Total Spending

## Filters and Slicers
- Order Date
- Region
- Product Category
- Sales Channel

## DAX Measures

Total Revenue = SUM(sales[sales_amount])

Total Profit = SUM(sales[profit])

Total Orders = DISTINCTCOUNT(sales[order_id])

Total Customers = DISTINCTCOUNT(sales[customer_id])

Total Units Sold = SUM(sales[quantity])

## Expected Outcome
An interactive dashboard that helps business users monitor revenue, profitability, customer purchasing patterns and regional performance.
