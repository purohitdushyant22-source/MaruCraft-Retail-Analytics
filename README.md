# MaruCraft Retail Analytics Dashboard

An end-to-end retail analytics project using **Python, PostgreSQL, and Power BI** to analyze sales performance, profitability, discount effectiveness, customer returns, and acquisition channels.

> **Dataset Disclaimer:** MaruCraft is a fictional retail business, and this project uses synthetic data for educational and portfolio purposes. The findings do not represent the actual performance of a real company.

## 🛠️ Tech Stack

- **Python:** Pandas, NumPy
- **Database:** PostgreSQL
- **Visualization:** Power BI
- **Environment:** Jupyter Notebook
- **Version Control:** Git and GitHub

## 🔄 Project Workflow

Raw Data → Data Cleaning → Feature Engineering → SQL Analysis → Power BI Dashboard → Business Insights

### Data Cleaning & Preparation
- Checked data quality, missing values, duplicate records, and data types.
- Prepared analytical features such as margin percentage, discount amount, return flags, and year-month.

### SQL Analysis

Used PostgreSQL to investigate:
- Product and category performance
- Discount impact on profitability
- Sales channel return rates and margins
- Customer acquisition performance
- Monthly revenue trends

### Power BI Dashboard

Developed an interactive, two-page dashboard.

- **Page 1 — Executive Overview:** Revenue and profit KPIs, monthly trends, product performance, and category analysis.
- **Page 2 — Profitability, Returns & Channel Analysis:** Discount impact, channel profitability, return rates, acquisition performance, and customer segments.

## 📊 Key Business Insights

### 1. Top-Performing Product
The Handwoven Cotton Rug generated the highest revenue (**₹504,756.27**) and product-level profit (**₹255,856.27**).

### 2. Most Profitable Category
Home Decor generated **₹624,361.57** in profit, followed by Textiles at **₹289,668.05**.

### 3. Discount Impact
Average margin declined from **56.93%** for discounts of 0–5% to **44.18%** for discounts above 20%, highlighting the potential profitability impact of larger discounts.

### 4. Sales Channel Returns
Website had the highest return rate (**6.10%**), followed by Instagram (**5.98%**). These channels may warrant further investigation into product-level returns and customer feedback.

### 5. Acquisition & Monthly Performance
Organic Search generated the highest revenue (**₹1,088,988.58**) and profit (**₹563,183.57**). November 2025 recorded the highest monthly revenue at **₹285,025.95**.

## 📈 Dashboard Preview

### Page 1: Executive Overview

![Executive Overview](<Executive Overview.png>)

### Page 2: Profitability, Returns & Channel Analysis

![Profitability Analysis](<Profit,Return & Channel Overview.png>)

## 🚀 How to Explore

1. Review the dashboard screenshots above.
2. Explore the Python notebook for data preparation.
3. Review the SQL scripts for business analysis.
4. Open `MaruCraft_Dashboard.pbix` in Power BI Desktop to explore the interactive dashboard.

## 👨‍💻 Author

**Dushyant Purohit**  
Aspiring Data Analyst | Python | PostgreSQL | Power BI
