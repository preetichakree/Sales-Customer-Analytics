import pandas as pd
import matplotlib.pyplot as plt
from pathlib import Path

# Project folder paths
BASE_DIR = Path(__file__).resolve().parent.parent
DATA_FILE = BASE_DIR / "data" / "sales_data.csv"
OUTPUT_DIR = BASE_DIR / "outputs"

OUTPUT_DIR.mkdir(exist_ok=True)

# Load dataset
df = pd.read_csv(DATA_FILE)

print("Original Dataset Shape:", df.shape)

# Data cleaning
df["order_date"] = pd.to_datetime(
    df["order_date"], errors="coerce"
)

df = df.drop_duplicates()
df = df.dropna(subset=["order_id", "customer_id", "sales_amount"])

df["sales_amount"] = pd.to_numeric(
    df["sales_amount"], errors="coerce"
)

df["profit"] = pd.to_numeric(
    df["profit"], errors="coerce"
)

df = df.dropna(subset=["sales_amount", "profit"])

print("\nCleaned Dataset Shape:", df.shape)

# Overall business performance
total_revenue = df["sales_amount"].sum()
total_profit = df["profit"].sum()
total_orders = df["order_id"].nunique()
total_customers = df["customer_id"].nunique()

print("\n--- Business Performance ---")
print("Total Revenue:", round(total_revenue, 2))
print("Total Profit:", round(total_profit, 2))
print("Total Orders:", total_orders)
print("Total Customers:", total_customers)

# Monthly sales analysis
df["month"] = df["order_date"].dt.to_period("M").astype(str)

monthly_sales = (
    df.groupby("month")["sales_amount"]
    .sum()
    .reset_index()
)

monthly_sales.to_csv(
    OUTPUT_DIR / "monthly_sales.csv", index=False
)

# Category performance
category_sales = (
    df.groupby("category")
    .agg(
        revenue=("sales_amount", "sum"),
        profit=("profit", "sum"),
        units_sold=("quantity", "sum")
    )
    .reset_index()
    .sort_values("revenue", ascending=False)
)

category_sales.to_csv(
    OUTPUT_DIR / "category_performance.csv", index=False
)

# Top 10 customers
top_customers = (
    df.groupby("customer_id")["sales_amount"]
    .sum()
    .sort_values(ascending=False)
    .head(10)
    .reset_index()
)

top_customers.to_csv(
    OUTPUT_DIR / "top_customers.csv", index=False
)

# Monthly revenue chart
plt.figure(figsize=(10, 5))
plt.plot(
    monthly_sales["month"],
    monthly_sales["sales_amount"],
    marker="o"
)

plt.title("Monthly Sales Trend")
plt.xlabel("Month")
plt.ylabel("Revenue")
plt.xticks(rotation=45)
plt.tight_layout()

plt.savefig(OUTPUT_DIR / "monthly_sales_trend.png")
plt.close()

print("\nAnalysis completed successfully!")
print("Results saved in the outputs folder.")
