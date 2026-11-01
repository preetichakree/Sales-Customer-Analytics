# Sales & Customer Analytics Project

## Project Overview
This project analyzes retail sales and customer data to identify business trends, evaluate product performance, and understand customer purchasing behaviour.

The goal is to convert raw sales data into meaningful business insights using SQL and Python.

## Business Objectives
- Calculate total revenue, profit, and order volume.
- Identify top-performing product categories.
- Analyze monthly sales trends.
- Identify high-value customers.
- Compare sales performance across regions and channels.
- Perform data cleaning and quality checks.

## Technologies Used
- **MySQL** – Database creation, data management, joins, subqueries, CTEs, and window functions.
- **Python** – Data analysis and automation.
- **Pandas** – Data cleaning and manipulation.
- **Matplotlib** – Data visualization.
- **Power BI** – Planned interactive dashboard.
- **GitHub** – Project version control and documentation.

## Dataset
The project uses a synthetic retail sales dataset containing 20 records and 14 columns.

Key fields include:
- Order ID
- Order Date
- Customer ID
- Product Name
- Category
- Region
- Sales
- Profit
- Quantity
- Sales Channel

*Note: The dataset is synthetic and created for learning and portfolio purposes.*

## Analysis Performed

### SQL Analysis
- Sales performance and KPI calculations.
- Monthly revenue analysis.
- Category-wise performance.
- Top customer analysis.
- Regional and sales channel analysis.
- Customer and product table joins.
- Subqueries, CTEs, and ranking functions.

### Python Analysis
- Data loading and inspection.
- Duplicate and missing-value checks.
- Data cleaning using Pandas.
- Revenue and profit calculations.
- Monthly sales analysis.
- Category performance analysis.
- Customer performance analysis.
- Sales trend visualization using Matplotlib.

## Key Business Insights

| Metric | Result |
|---|---:|
| Total Revenue | ₹2,46,040 |
| Total Profit | ₹55,640 |
| Total Orders | 20 |
| Total Customers | 8 |
| Profit Margin | 22.61% |
| Average Order Value | ₹12,302 |

### Category Performance

| Category | Revenue | Profit |
|---|---:|---:|
| Electronics | ₹1,72,140 | ₹34,540 |
| Furniture | ₹64,400 | ₹16,900 |
| Stationery | ₹9,500 | ₹4,200 |

- Electronics generated the highest revenue.
- January 2025 recorded the highest monthly revenue of ₹64,350.
- Overall profit margin was approximately 22.61%.

## Project Structure

```text
Sales-Customer-Analytics/
│
├── data/
│   └── sales_data.csv
│
├── sql/
│   ├── 01_create_database.sql
│   ├── 02_analysis_queries.sql
│   ├── 03_advanced_sql.sql
│   ├── 04_customer_product_tables.sql
│   └── 05_customer_analysis.sql
│
├── python/
│   └── analysis.py
│
├── outputs/
│   ├── monthly_sales.csv
│   ├── top_customers.csv
│   ├── category_performance.csv
│   └── monthly_sales_trend.png
│
├── powerbi/
│   └── dashboard_build_guide.md
│
├── reports/
│   └── business_insights.md
│
├── requirements.txt
└── README.md
```

## Project Status
- [x] Dataset creation
- [x] SQL queries and analysis
- [x] Python data cleaning and analysis
- [x] Business insights report
- [x] Sales trend visualization
- [ ] Interactive Power BI dashboard

## Author
**Preeti Chakre**

Aspiring Data Analyst | SQL | Python | MySQL | Data Visualization
