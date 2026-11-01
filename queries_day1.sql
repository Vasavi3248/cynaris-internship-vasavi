-- SQL Fundamentals: Week 1, Day 1
-- Sample sales database queries
-- Assumed tables:
--   customers(customer_id, customer_name, city, email)
--   products(product_id, product_name, category, price, stock)
--   orders(order_id, customer_id, order_date, status, total_amount)

-- 1. Display all customers
SELECT *
FROM customers;

-- 2. Display product names and prices
SELECT product_name, price
FROM products;

-- 3. Find products costing more than 1000
SELECT product_name, price
FROM products
WHERE price > 1000;

-- 4. Find orders with status 'Completed' and total amount above 500
SELECT order_id, status, total_amount
FROM orders
WHERE status = 'Completed' AND total_amount > 500;

-- 5. Find products in the Electronics or Accessories categories
SELECT product_name, category
FROM products
WHERE category = 'Electronics' OR category = 'Accessories';

-- 6. Find orders that are not Cancelled
SELECT order_id, status
FROM orders
WHERE NOT status = 'Cancelled';

-- 7. Find customers whose names start with 'A'
SELECT customer_id, customer_name
FROM customers
WHERE customer_name LIKE 'A%';

-- 8. Find products in selected categories
SELECT product_name, category
FROM products
WHERE category IN ('Electronics', 'Accessories');

-- 9. Find orders with total amounts between 500 and 2000
SELECT order_id, total_amount
FROM orders
WHERE total_amount BETWEEN 500 AND 2000;

-- 10. Find customers who have no email address recorded
SELECT customer_id, customer_name
FROM customers
WHERE email IS NULL;
