-- CYNARIS INTERNSHIP
-- WEEK 1 - DAY 2: SQL JOINS
-- Database: cynaris_internship

USE cynaris_internship;


-- TASK 1: INNER JOIN
-- Returns rows where product names match in both tables.

SELECT
    s.sale_id,
    s.product_name,
    s.quantity,
    s.price,
    p.category
FROM sales AS s
INNER JOIN products AS p
    ON s.product_name = p.product_name;


-- TASK 2: LEFT JOIN
-- Returns all sales records and matching product details.

SELECT
    s.sale_id,
    s.product_name,
    s.quantity,
    p.category
FROM sales AS s
LEFT JOIN products AS p
    ON s.product_name = p.product_name;


-- TASK 3: RIGHT JOIN
-- Returns all products and any matching sales records.

SELECT
    p.product_id,
    p.product_name,
    p.category,
    s.sale_id,
    s.quantity,
    s.price
FROM sales AS s
RIGHT JOIN products AS p
    ON s.product_name = p.product_name;


-- TASK 4: SIMULATE FULL OUTER JOIN IN MYSQL
-- MySQL does not directly support FULL OUTER JOIN.
-- UNION combines the LEFT JOIN and RIGHT JOIN results.

SELECT
    s.sale_id,
    s.product_name,
    s.quantity,
    s.price,
    p.product_id,
    p.category
FROM sales AS s
LEFT JOIN products AS p
    ON s.product_name = p.product_name

UNION

SELECT
    s.sale_id,
    s.product_name,
    s.quantity,
    s.price,
    p.product_id,
    p.category
FROM sales AS s
RIGHT JOIN products AS p
    ON s.product_name = p.product_name;


-- TASK 5A: FIND DUPLICATE PRODUCT NAMES

SELECT
    product_name,
    COUNT(*) AS total_records
FROM products
GROUP BY product_name
HAVING COUNT(*) > 1;


-- TASK 5B: FIND PRODUCTS WITH MULTIPLE SALES
-- Multiple sales are not necessarily errors.

SELECT
    product_name,
    COUNT(*) AS total_sales
FROM sales
GROUP BY product_name
HAVING COUNT(*) > 1;


-- TASK 5C: JOIN AND CHECK THE RESULT

SELECT
    s.sale_id,
    s.product_name,
    p.category
FROM sales AS s
INNER JOIN products AS p
    ON s.product_name = p.product_name;


-- TASK 6: CREATE EMPLOYEES TABLE FOR SELF JOIN

CREATE TABLE IF NOT EXISTS employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    manager_id INT NULL
);


-- TASK 6A: INSERT SAMPLE EMPLOYEE DATA
-- Run this INSERT only once.

INSERT INTO employees
    (employee_id, employee_name, manager_id)
VALUES
    (1, 'Ravi', NULL),
    (2, 'Priya', 1),
    (3, 'Arun', 1),
    (4, 'Sneha', 2),
    (5, 'Kiran', 2);


-- TASK 6B: SELF JOIN
-- Match each employee with their manager.

SELECT
    e.employee_name AS employee,
    m.employee_name AS manager
FROM employees AS e
LEFT JOIN employees AS m
    ON e.manager_id = m.employee_id;


-- TASK 7: TABLE ALIASES

SELECT
    s.product_name,
    s.quantity,
    p.category
FROM sales AS s
INNER JOIN products AS p
    ON s.product_name = p.product_name;


-- END OF WEEK 1 DAY 2 SQL TASKS