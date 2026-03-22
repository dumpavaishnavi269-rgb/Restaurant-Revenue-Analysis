# 🍽️ CUSTOMER BEHAVIOUR & REVENUE INSIGHTS

![MySQL](https://img.shields.io/badge/MySQL-8.0-blue)
![SQL](https://img.shields.io/badge/SQL-Data%20Analysis-orange)
![Tool](https://img.shields.io/badge/Tool-MySQL%20Workbench-lightblue)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

---

## 📌 About This Project

I built this project using **MySQL 8.0 and MySQL Workbench** to analyse
restaurant revenue, customer behaviour, and food sales data.

I designed a **4-table relational database** from scratch, inserted real data,
performed data cleaning and consistency checks, wrote **10+ SQL queries**
using Joins, Aggregations, Window Functions and created **2 reusable SQL Views**
to deliver business insights.

---

## 🎯 Key Insights Found

- 📍 **Hyderabad** drives **55.4%** of total restaurant revenue
- 🍛 **Main Course** is the top category with **52.3%** of food sales
- ❌ **3 cancelled orders** caused **7.86% revenue loss**
- 💳 **Card payments** are most preferred — **40%** of all transactions
- 📱 **UPI** accounts for **36.67%** of payments
- 👥 **100% of customers** placed at least one order — no inactive customers
- ✅ **Data Quality: 100%** — zero nulls, zero duplicates across all 4 tables
- 📦 **Delivered: 83.33%** | Pending: 6.67% | Cancelled: 10%

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| MySQL 8.0 | Database & query execution |
| MySQL Workbench | SQL coding environment |
| SQL | Data cleaning, joins, aggregations, views |

---

## 🗄️ Database Schema — 4 Tables

| Table | Records | Description |
|---|---|---|
| `customers` | 10 | Customer name, phone, email, city, join date |
| `menu` | 14 | Item name, category, price, availability |
| `orders` | 30 | Order date, amount, status, payment mode |
| `order_items` | 38 | Which items were ordered per order |

**Relationships:**
- `orders.customer_id` → `customers.customer_id`
- `order_items.order_id` → `orders.order_id`
- `order_items.item_id` → `menu.item_id`

---

## 🔢 Steps I Followed

**Step 1 — Created Database & 4 Tables**
Created `restaurant_revenue_db` with 4 related tables using
PRIMARY KEYS, FOREIGN KEYS and proper data types.

**Step 2 — Inserted Data**
Inserted 10 customers, 14 menu items, 30 orders (Jan–Jun 2024)
and 38 order item records.

**Step 3 — Data Cleaning**
- Checked NULLs across all columns → Result: 0 NULLs ✅
- Checked duplicate emails and phones → Result: 0 duplicates ✅
- Checked invalid quantities → Result: All valid ✅
- Checked orphan records → Result: All items linked correctly ✅
- Overall data quality: **100%** across all 4 tables ✅

**Step 4 — Data Consistency Checks**
- Order status distribution (Delivered / Cancelled / Pending)
- Payment mode distribution (Card / UPI / Cash)
- Date range validation (Jan 2024 – Jun 2024)
- Cancelled orders revenue loss → **7.86% loss**

**Step 5 — Joins (2, 3 and 4 Table Joins)**
- INNER JOIN: Customers + Orders
- LEFT JOIN: All customers including those with no orders
- 3-Table JOIN: Orders + Items + Menu
- 4-Table JOIN: Full report — customer, item, order details

**Step 6 — Business Analysis Queries**
- Top customers by total spending and revenue %
- Best selling menu items by quantity sold
- Category-wise revenue with % (Main: 52.3%)
- Monthly revenue trend (Jan–Jun 2024)
- City-wise revenue (Hyderabad: 55.4%)
- Payment mode breakdown

**Step 7 — SQL Views (Reusable)**
- `vw_customer_revenue` — customer spending summary
- `vw_monthly_revenue` — month-wise revenue trend

---

## 📊 Business Insights Summary

| Insight | Result |
|---|---|
| Top Revenue City | Hyderabad — 55.4% |
| Top Food Category | Main Course — 52.3% |
| Cancelled Orders Loss | 7.86% revenue loss |
| Most Used Payment | Card — 40% |
| Delivered Orders | 83.33% |
| Active Customers | 100% (all 10 ordered) |
| Data Quality | 100% — zero nulls/duplicates |

---

## 📁 Files in This Repo

| File | Description |
|---|---|
| `CUSTOMER BEHAVIOUR & REVENUE INSIGHTS` | Complete SQL project file |
| `README.md` | Project documentation |

---

## 👩‍💻 Made By

**Dumpa Vaishnavi** — Data Analyst
📍 Hyderabad, India
📧 dumpavaishnavi269@gmail.com
🔗 [LinkedIn](https://linkedin.com/in/dumpavaishnavi)
🌐 [Portfolio](https://dumpa-vaishnavi.com)

---

⭐ Star this repo if you found it useful!
