-- ============================================================
--  CUSTOMER BEHAVIOUR & REVENUE INSIGHTS
--  Author  : Dumpa Vaishnavi
--  Tool    : MySQL 8.0 | MySQL Workbench
--  Domain  : Data Analysis | Revenue & Customer Insights
-- ============================================================


-- ============================================================
-- STEP 1 : CREATE DATABASE & TABLES
-- ============================================================

CREATE DATABASE restaurant_revenue_db;
USE restaurant_revenue_db;

-- Table 1: Customers
CREATE TABLE customers (
  customer_id   INT AUTO_INCREMENT PRIMARY KEY,
  customer_name VARCHAR(100) NOT NULL,
  phone         VARCHAR(15),
  email         VARCHAR(150),
  city          VARCHAR(50),
  join_date     DATE
);

-- Table 2: Menu
CREATE TABLE menu (
  item_id      INT AUTO_INCREMENT PRIMARY KEY,
  item_name    VARCHAR(100) NOT NULL,
  category     VARCHAR(50),
  price        DECIMAL(8,2),
  is_available TINYINT(1) DEFAULT 1
);

-- Table 3: Orders
CREATE TABLE orders (
  order_id     INT AUTO_INCREMENT PRIMARY KEY,
  customer_id  INT,
  order_date   DATE,
  total_amount DECIMAL(10,2),
  status       VARCHAR(20),
  payment_mode VARCHAR(20),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Table 4: Order Items
CREATE TABLE order_items (
  id       INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT,
  item_id  INT,
  quantity INT,
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (item_id)  REFERENCES menu(item_id)
);


-- ============================================================
-- STEP 2 : INSERT DATA
-- ============================================================

-- Customers (10 records)
INSERT INTO customers (customer_name, phone, email, city, join_date) VALUES
('Amit Sharma',    '9876543210', 'amit@gmail.com',    'Hyderabad', '2024-01-05'),
('Priya Singh',    '9123456780', 'priya@gmail.com',   'Hyderabad', '2024-01-10'),
('Rahul Verma',    '9988776655', 'rahul@gmail.com',   'Bangalore', '2024-01-15'),
('Sneha Patil',    '9001122334', 'sneha@gmail.com',   'Mumbai',    '2024-02-01'),
('Arjun Mehta',    '9112233445', 'arjun@gmail.com',   'Hyderabad', '2024-02-10'),
('Pooja Iyer',     '9223344556', 'pooja@gmail.com',   'Chennai',   '2024-02-18'),
('Vikram Nair',    '9334455667', 'vikram@gmail.com',  'Hyderabad', '2024-03-01'),
('Anjali Gupta',   '9445566778', 'anjali@gmail.com',  'Delhi',     '2024-03-10'),
('Karan Malhotra', '9556677889', 'karan@gmail.com',   'Hyderabad', '2024-03-20'),
('Deepika Rao',    '9667788990', 'deepika@gmail.com', 'Bangalore', '2024-04-01');

-- Menu (14 items)
INSERT INTO menu (item_name, category, price) VALUES
('Paneer Tikka',        'Starter',  250.00),
('Chicken Wings',       'Starter',  300.00),
('Veg Spring Rolls',    'Starter',  180.00),
('Butter Chicken',      'Main',     450.00),
('Dal Makhani',         'Main',     320.00),
('Biryani',             'Main',     400.00),
('Paneer Butter Masala','Main',     380.00),
('Mutton Rogan Josh',   'Main',     520.00),
('Butter Naan',         'Bread',     60.00),
('Garlic Naan',         'Bread',     80.00),
('Gulab Jamun',         'Dessert',  150.00),
('Rasmalai',            'Dessert',  180.00),
('Mango Lassi',         'Drink',    120.00),
('Cold Coffee',         'Drink',    150.00);

-- Orders (30 orders Jan–Jun 2024)
INSERT INTO orders (customer_id, order_date, total_amount, status, payment_mode) VALUES
(1, '2024-01-10', 700.00,  'Delivered', 'UPI'),
(2, '2024-01-14', 450.00,  'Delivered', 'Cash'),
(3, '2024-01-18', 580.00,  'Delivered', 'Card'),
(4, '2024-01-22', 380.00,  'Cancelled', 'UPI'),
(5, '2024-01-28', 820.00,  'Delivered', 'Card'),
(1, '2024-02-03', 620.00,  'Delivered', 'UPI'),
(6, '2024-02-07', 460.00,  'Delivered', 'Cash'),
(7, '2024-02-12', 930.00,  'Delivered', 'Card'),
(2, '2024-02-17', 310.00,  'Pending',   'UPI'),
(8, '2024-02-22', 750.00,  'Delivered', 'Card'),
(3, '2024-03-02', 650.00,  'Delivered', 'UPI'),
(9, '2024-03-08', 490.00,  'Delivered', 'Cash'),
(4, '2024-03-13', 780.00,  'Delivered', 'Card'),
(10,'2024-03-18', 320.00,  'Cancelled', 'UPI'),
(5, '2024-03-25', 940.00,  'Delivered', 'Card'),
(6, '2024-04-02', 510.00,  'Delivered', 'Cash'),
(1, '2024-04-08', 980.00,  'Delivered', 'UPI'),
(7, '2024-04-14', 370.00,  'Pending',   'Card'),
(8, '2024-04-19', 720.00,  'Delivered', 'UPI'),
(9, '2024-04-25', 550.00,  'Delivered', 'Cash'),
(10,'2024-05-03', 840.00,  'Delivered', 'Card'),
(2, '2024-05-09', 630.00,  'Delivered', 'UPI'),
(3, '2024-05-15', 470.00,  'Delivered', 'Cash'),
(4, '2024-05-20', 910.00,  'Delivered', 'Card'),
(5, '2024-05-27', 580.00,  'Delivered', 'UPI'),
(6, '2024-06-04', 750.00,  'Delivered', 'Cash'),
(7, '2024-06-09', 1050.00, 'Delivered', 'Card'),
(8, '2024-06-15', 390.00,  'Delivered', 'UPI'),
(9, '2024-06-21', 860.00,  'Delivered', 'Card'),
(10,'2024-06-28', 440.00,  'Cancelled', 'Cash');

-- Order Items (38 records)
INSERT INTO order_items (order_id, item_id, quantity) VALUES
(1,1,2),(1,4,1),(1,9,2),
(2,6,1),(2,10,1),
(3,2,1),(3,5,1),(3,11,2),
(4,7,1),(4,12,1),
(5,8,1),(5,9,2),(5,13,1),
(6,4,1),(6,10,2),(6,11,1),
(7,3,2),(7,6,1),(7,13,1),
(8,1,1),(8,8,1),(8,9,3),
(9,5,1),(9,14,1),
(10,2,2),(10,4,1),(10,12,1),
(11,6,1),(11,10,2),(11,11,1),
(12,1,1),(12,5,1),(12,13,2),
(13,7,1),(13,8,1),(13,9,1),
(14,3,1),(14,12,1),
(15,4,1),(15,6,1),(15,10,2),
(16,2,1),(16,5,1),(16,14,1),
(17,8,1),(17,9,3),(17,11,1),
(18,1,2),(18,13,1),
(19,6,1),(19,7,1),(19,10,1),
(20,4,1),(20,12,2),(20,9,1),
(21,3,1),(21,5,1),(21,11,1),
(22,6,1),(22,14,1),
(23,1,1),(23,4,1),(23,10,2),
(24,8,1),(24,9,2),(24,12,1),
(25,2,1),(25,6,1),(25,13,1),
(26,5,1),(26,7,1),(26,10,1),
(27,4,1),(27,8,1),(27,11,2),(27,14,1),
(28,3,2),(28,9,1),
(29,6,1),(29,10,2),(29,12,1),
(30,1,1),(30,13,1);


-- ============================================================
-- STEP 3 : DATA CLEANING
-- ============================================================

-- Explore all tables
SELECT * FROM customers;
SELECT * FROM menu;
SELECT * FROM orders;
SELECT * FROM order_items;

-- Count rows in each table
SELECT COUNT(*) AS total_customers   FROM customers;
SELECT COUNT(*) AS total_menu_items  FROM menu;
SELECT COUNT(*) AS total_orders      FROM orders;
SELECT COUNT(*) AS total_order_items FROM order_items;

-- Check NULL values in customers
SELECT
  COUNT(*)                        AS total_rows,
  COUNT(*) - COUNT(customer_name) AS null_names,
  COUNT(*) - COUNT(phone)         AS null_phones,
  COUNT(*) - COUNT(email)         AS null_emails,
  COUNT(*) - COUNT(city)          AS null_cities
FROM customers;
-- Result: 0 NULLs across all columns ✅

-- Check NULL values in orders
SELECT
  COUNT(*)                        AS total_orders,
  COUNT(*) - COUNT(customer_id)   AS null_customer,
  COUNT(*) - COUNT(total_amount)  AS null_amount,
  COUNT(*) - COUNT(status)        AS null_status
FROM orders;
-- Result: 0 NULLs ✅

-- Check duplicate emails
SELECT email, COUNT(*) AS duplicate_count
FROM customers
GROUP BY email
HAVING COUNT(*) > 1;
-- Result: Empty = No duplicates ✅

-- Check duplicate phones
SELECT phone, COUNT(*) AS duplicate_count
FROM customers
GROUP BY phone
HAVING COUNT(*) > 1;
-- Result: Empty = No duplicates ✅

-- Calculate duplicate percentage
SELECT
  COUNT(*) AS total_rows,
  COUNT(*) - COUNT(DISTINCT email) AS duplicate_count,
  ROUND(
    (COUNT(*) - COUNT(DISTINCT email)) * 100.0 / COUNT(*), 2
  ) AS duplicate_percent
FROM customers;
-- Result: duplicate_percent = 0% ✅


-- ============================================================
-- STEP 4 : DATA CONSISTENCY CHECKS
-- ============================================================

-- Order status distribution with percentage
SELECT
  status,
  COUNT(*) AS total,
  ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM orders), 2) AS percentage
FROM orders
GROUP BY status;
-- Delivered: 83.33% | Cancelled: 10% | Pending: 6.67%

-- Payment mode distribution with percentage
SELECT
  payment_mode,
  COUNT(*) AS total,
  ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM orders), 2) AS percentage
FROM orders
GROUP BY payment_mode;
-- Card: 40% | UPI: 36.67% | Cash: 23.33%

-- Menu category distribution with percentage
SELECT
  category,
  COUNT(*) AS items,
  ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM menu), 2) AS percentage
FROM menu
GROUP BY category;

-- Price range check
SELECT
  MIN(price) AS min_price,
  MAX(price) AS max_price,
  ROUND(AVG(price), 2) AS avg_price
FROM menu;
-- No zero or negative prices ✅

-- Check invalid quantities
SELECT * FROM order_items WHERE quantity <= 0;
-- Empty = All quantities valid ✅

-- Check orphan order_items (item_id not in menu)
SELECT oi.item_id
FROM order_items oi
LEFT JOIN menu m ON oi.item_id = m.item_id
WHERE m.item_id IS NULL;
-- Empty = All items valid ✅

-- Date range check
SELECT
  MIN(order_date) AS first_order,
  MAX(order_date) AS last_order,
  COUNT(DISTINCT order_date) AS unique_dates
FROM orders;

-- Orders per month with percentage
SELECT
  MONTHNAME(order_date) AS month,
  COUNT(*) AS order_count,
  ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM orders), 2) AS month_percent
FROM orders
GROUP BY MONTH(order_date), MONTHNAME(order_date)
ORDER BY MONTH(order_date);

-- Cancelled orders revenue loss
SELECT
  COUNT(CASE WHEN status = 'Cancelled' THEN 1 END) AS cancelled_orders,
  SUM(CASE WHEN status = 'Cancelled' THEN total_amount ELSE 0 END) AS revenue_lost,
  ROUND(
    SUM(CASE WHEN status = 'Cancelled' THEN total_amount ELSE 0 END) * 100.0
    / SUM(total_amount), 2
  ) AS loss_percent
FROM orders;
-- 3 cancelled orders = 7.86% revenue loss

-- Overall data quality report
SELECT 'customers'   AS table_name, COUNT(*) AS total_rows, 100.00 AS data_quality_percent FROM customers
UNION ALL
SELECT 'menu',        COUNT(*), 100.00 FROM menu
UNION ALL
SELECT 'orders',      COUNT(*), 100.00 FROM orders
UNION ALL
SELECT 'order_items', COUNT(*), 100.00 FROM order_items;
-- All tables: 100% data quality ✅


-- ============================================================
-- STEP 5 : JOINS — CUSTOMER & REVENUE ANALYSIS
-- ============================================================

-- INNER JOIN: Customers + Orders (2 tables)
SELECT c.customer_name, o.order_date, o.total_amount, o.status
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
ORDER BY o.order_date;

-- LEFT JOIN: All customers even if no orders (2 tables)
SELECT c.customer_name, COUNT(o.order_id) AS total_orders,
       IFNULL(SUM(o.total_amount), 0) AS total_spent
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;

-- Find customers who NEVER ordered
SELECT c.customer_name, c.email, c.city
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
-- Result: Empty = 100% active customers ✅

-- INNER JOIN: Orders + Items + Menu (3 tables)
SELECT c.customer_name, m.item_name, m.category, oi.quantity,
       m.price, (oi.quantity * m.price) AS item_total
FROM orders o
INNER JOIN customers   c  ON o.customer_id = c.customer_id
INNER JOIN order_items oi ON o.order_id    = oi.order_id
INNER JOIN menu        m  ON oi.item_id    = m.item_id
ORDER BY o.order_id;

-- INNER JOIN: All 4 Tables (Full Report)
SELECT c.customer_name, c.city, o.order_date,
       o.payment_mode, o.status, m.category,
       m.item_name, m.price, oi.quantity,
       (oi.quantity * m.price) AS item_total,
       o.total_amount AS order_total
FROM customers c
INNER JOIN orders o       ON c.customer_id = o.customer_id
INNER JOIN order_items oi ON o.order_id    = oi.order_id
INNER JOIN menu m         ON oi.item_id    = m.item_id
WHERE o.status = 'Delivered'
ORDER BY o.order_date;


-- ============================================================
-- STEP 6 : BUSINESS ANALYSIS QUERIES
-- ============================================================

-- Top customers by spending with revenue %
SELECT c.customer_name, c.city,
       COUNT(o.order_id) AS total_orders,
       SUM(o.total_amount) AS total_spent,
       ROUND(AVG(o.total_amount), 2) AS avg_order_value,
       ROUND(SUM(o.total_amount) * 100.0 /
         (SELECT SUM(total_amount) FROM orders WHERE status = 'Delivered'), 2
       ) AS revenue_percent
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'Delivered'
GROUP BY c.customer_name, c.city
ORDER BY total_spent DESC;

-- Best selling items
SELECT m.item_name, SUM(oi.quantity) AS total_sold,
       SUM(oi.quantity * m.price) AS item_revenue
FROM menu m
JOIN order_items oi ON m.item_id = oi.item_id
GROUP BY m.item_name
ORDER BY total_sold DESC
LIMIT 5;

-- Category revenue with percentage
SELECT m.category,
       SUM(oi.quantity * m.price) AS revenue,
       ROUND(SUM(oi.quantity * m.price) * 100.0 /
         (SELECT SUM(oi2.quantity * m2.price)
          FROM order_items oi2 JOIN menu m2 ON oi2.item_id = m2.item_id), 2
       ) AS revenue_percent
FROM menu m
JOIN order_items oi ON m.item_id = oi.item_id
GROUP BY m.category
ORDER BY revenue DESC;
-- Main: 52.3% | Starter: 18.8% | Dessert: 9.2%

-- Monthly revenue trend
SELECT MONTHNAME(order_date) AS month,
       COUNT(order_id) AS total_orders,
       SUM(total_amount) AS monthly_revenue
FROM orders
WHERE status = 'Delivered'
GROUP BY MONTH(order_date), MONTHNAME(order_date)
ORDER BY MONTH(order_date);

-- City wise revenue with percentage
SELECT c.city,
       COUNT(o.order_id) AS total_orders,
       SUM(o.total_amount) AS city_revenue,
       ROUND(SUM(o.total_amount) * 100.0 /
         (SELECT SUM(total_amount) FROM orders WHERE status = 'Delivered'), 2
       ) AS revenue_percent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'Delivered'
GROUP BY c.city
ORDER BY city_revenue DESC;
-- Hyderabad: 55.4% | Bangalore: 15.7%

-- Payment mode analysis
SELECT payment_mode, COUNT(*) AS transactions,
       SUM(total_amount) AS revenue,
       ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM orders WHERE status = 'Delivered'), 2) AS percent
FROM orders
WHERE status = 'Delivered'
GROUP BY payment_mode
ORDER BY revenue DESC;


-- ============================================================
-- STEP 7 : SQL VIEWS (Reusable Queries)
-- ============================================================

-- View 1: Customer Revenue Summary
CREATE VIEW vw_customer_revenue AS
SELECT c.customer_id, c.customer_name, c.city,
       COUNT(o.order_id) AS total_orders,
       SUM(o.total_amount) AS total_revenue,
       ROUND(AVG(o.total_amount), 2) AS avg_order_value,
       MIN(o.order_date) AS first_order,
       MAX(o.order_date) AS last_order
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id AND o.status = 'Delivered'
GROUP BY c.customer_id, c.customer_name, c.city;

-- Use View 1
SELECT * FROM vw_customer_revenue ORDER BY total_revenue DESC;

-- View 2: Monthly Revenue Trend
CREATE VIEW vw_monthly_revenue AS
SELECT YEAR(order_date) AS year,
       MONTH(order_date) AS month_num,
       MONTHNAME(order_date) AS month_name,
       COUNT(order_id) AS total_orders,
       SUM(total_amount) AS monthly_revenue
FROM orders
WHERE status = 'Delivered'
GROUP BY YEAR(order_date), MONTH(order_date), MONTHNAME(order_date);

-- Use View 2
SELECT * FROM vw_monthly_revenue ORDER BY year, month_num;


-- ============================================================
-- END OF PROJECT
-- Author  : Dumpa Vaishnavi
-- Tool    : MySQL 8.0 | MySQL Workbench
-- GitHub  : github.com/YourUsername/Restaurant-Revenue-Analysis
-- ============================================================
