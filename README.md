# 🍽️ RESTAURANT SALES ANALYSIS

![MySQL](https://img.shields.io/badge/MySQL-8.0-blue?style=flat-square&logo=mysql)
![SQL](https://img.shields.io/badge/SQL-Data%20Analysis-orange?style=flat-square)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=flat-square)
![Tool](https://img.shields.io/badge/Tool-MySQL%20Workbench-lightblue?style=flat-square)

---

## 📌 About This Project

I built this project using **MySQL 8.0** and **MySQL Workbench** to analyse real restaurant sales data.  
I designed a **4-table relational database** from scratch — covering customers, menu items, orders, and order details — inserted data manually, performed complete **data cleaning & validation**, and solved **10 business problems** using advanced SQL queries to generate meaningful insights for restaurant decision-making.

Business Problem:
Every restaurant wants to know who their most valuable customers are. Without identifying high-spending customers, the restaurant cannot design loyalty programs, offer personalized discounts, or retain its best buyers. The management needed clarity on which customers consistently placed high-value delivered orders.


Desired Outcome:
Find the top customers ranked by total revenue generated from successfully delivered orders only, so the restaurant can reward and retain them.

---

## 💡 Key Insights

- 🏙️ **Hyderabad contributes 55.4%** of total restaurant revenue
- 🍛 **Main Course drives 52.3%** of total food category sales
- ❌ **Cancellations caused 6.35% revenue loss** — ₹400 out of ₹6,300
- 💳 **UPI is the #1 payment method** — used in **50%** of all transactions
- 📦 **80% order delivery rate** across all customers
- 🧾 **Average Order Value = ₹683** from delivered orders
- 🏆 **Chicken Biryani** is the best-selling menu item
- 📉 **6 menu items recorded zero sales** — need menu review

---

## 🛠️ Tools Used

| Tool | Purpose |
|---|---|
| MySQL 8.0 | Database creation & query execution |
| MySQL Workbench | SQL editor & schema design |
| SQL Joins | Combining data across 4 tables |
| Aggregations | SUM, COUNT, AVG, ROUND |
| CASE WHEN | Conditional revenue analysis |
| IFNULL | Handling zero-sale menu items |
| Subqueries | Percentage calculations |

---

## 🪜 Steps I Followed

**Step 1 — Database Design**
- Created 4 tables: `customers`, `menu`, `orders`, `order_items`
- Applied Primary Keys and Foreign Keys for relational integrity

**Step 2 — Data Insertion**
- Inserted 10 customers, 10 menu items, 10 orders, and 10 order item records manually

**Step 3 — Data Cleaning & Validation**
- Checked for NULL values across all 4 tables → None found
- Checked for duplicate customers → None found
- Validated prices and quantities → All valid
- Verified foreign key relationships → No mismatches
- Confirmed valid order statuses: `Delivered · Pending · Cancelled`
- Confirmed valid payment modes: `UPI · Card · Cash`

**Step 4 — Business Problem Solving**
- Wrote 10+ SQL queries to solve real business problems
- Used JOINs, GROUP BY, HAVING, CASE WHEN, Subqueries, and LEFT JOIN

**Step 5 — Insight Generation**
- Summarised all findings into a business insights report with percentages and revenue figures

---

## 📊 Business Insights Summary

| # | Business Problem | Key Finding |
|---|---|---|
| 1 | Top Spending Customers | Identified highest-value customers by delivered revenue |
| 2 | Best Selling Menu Items | Chicken Biryani → #1 in units sold |
| 3 | Category-Wise Revenue | Main Course → **52.3%** of total sales |
| 4 | Monthly Revenue Trend | Revenue tracked Jan → Mar 2024 |
| 5 | Most Used Payment Method | UPI → **50%** · Card → 30% · Cash → 20% |
| 6 | City-Wise Revenue | Hyderabad → **55.4%** of total revenue |
| 7 | Repeat Customers | Identified loyal customers with 2+ orders |
| 8 | Revenue Loss — Cancellations | ₹400 lost → **6.35%** revenue loss |
| 9 | Low Selling Products | 6 items with zero sales detected |
| 10 | Average Order Value | AOV = **₹683** (delivered orders) |

---

<div align="center">

---

### 🤍 Made with passion by

# D. Vaishnavi
**Data Analyst · Hyderabad, India**

📧 dumpavaishnavi269@gmail.com

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?style=flat-square&logo=linkedin)](https://linkedin.com/in/dumpa-vaishnavi)
[![GitHub](https://img.shields.io/badge/GitHub-Follow-black?style=flat-square&logo=github)](https://github.com/dumpavaishnavi269-rgb)

---

*"Turning raw data into real decisions."*

</div>
