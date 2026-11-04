('West',  'Clothing',    '2026-04-10',  7000, 7);

-- 4. Verify the table and its data
DESCRIBE sales;
SELECT * FROM sales;

-- 5. Aggregate queries

-- Query 1: COUNT - number of sales records
SELECT COUNT(*) AS total_sales
FROM sales;

-- Query 2: SUM - total revenue
SELECT SUM(amount) AS total_revenue
FROM sales;

-- Query 3: AVG - average sale amount
SELECT AVG(amount) AS average_sales
FROM sales;

-- Query 4: MAX - highest sale amount
SELECT MAX(amount) AS highest_sale
FROM sales;

-- Query 5: MIN - lowest sale amount
SELECT MIN(amount) AS lowest_sale
FROM sales;

-- Query 6: GROUP BY region and category
SELECT
    region,
    category,
    SUM(amount) AS total_sales
FROM sales
GROUP BY region, category
ORDER BY region, category;

-- Query 7: GROUP BY month
SELECT
    DATE_FORMAT(sale_date, '%Y-%m') AS sales_month,
    SUM(amount) AS monthly_sales
FROM sales
GROUP BY DATE_FORMAT(sale_date, '%Y-%m')
ORDER BY sales_month;

-- Query 8: HAVING - categories with total sales greater than 10,000
SELECT
    category,
    SUM(amount) AS total_sales
FROM sales
GROUP BY category
HAVING SUM(amount) > 10000
ORDER BY total_sales DESC;

-- Query 9: Window function - regional total while keeping each sale row
SELECT
    sale_id,
    region,
    category,
    amount,
    SUM(amount) OVER (PARTITION BY region) AS region_total_sales
FROM sales
ORDER BY region, sale_id;
