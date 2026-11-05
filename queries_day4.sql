 USE cynaris_internship;
Database changed
mysql> SELECT AVG(quantity * price) AS average_sales
    -> FROM sales;


mysql> SELECT
    ->     sale_id,
    ->     product_name,
    ->     quantity,
    ->     price,
    ->     (quantity * price) AS total_sales,
    ->     region
    -> FROM sales
    -> WHERE (quantity * price) > (
    ->     SELECT AVG(quantity * price)
    ->     FROM sales
    -> );


mysql> SELECT AVG(quantity * price) AS average_sales
    -> FROM sales;


mysql> -- TASK 2: Find top performer in each region
mysql>
mysql> SELECT
    ->     s1.sale_id,
    ->     s1.product_name,
    ->     s1.region,
    ->     s1.quantity,
    ->     s1.price,
    ->     (s1.quantity * s1.price) AS total_sales
    -> FROM sales s1
    -> WHERE (s1.quantity * s1.price) = (
    ->     SELECT MAX(s2.quantity * s2.price)
    ->     FROM sales s2
    ->     WHERE s2.region = s1.region
    -> );


mysql> -- TASK 3: Rewrite subquery using CTE
mysql>
mysql> WITH AverageSales AS (
    ->     SELECT AVG(quantity * price) AS avg_sales
    ->     FROM sales
    -> )
    -> SELECT
    ->     s.sale_id,
    ->     s.product_name,
    ->     s.quantity,
    ->     s.price,
    ->     (s.quantity * s.price) AS total_sales,
    ->     s.region
    -> FROM sales s
    -> CROSS JOIN AverageSales a
    -> WHERE (s.quantity * s.price) > a.avg_sales;


mysql> -- TASK 4: Chain two CTEs
mysql>
mysql> WITH ProductSales AS (
    ->     SELECT
    ->         sale_id,
    ->         product_name,
    ->         region,
    ->         quantity * price AS total_sales
    ->     FROM sales
    -> ),
    ->
    -> RegionalSales AS (
    ->     SELECT
    ->         region,
    ->         SUM(total_sales) AS regional_total
    ->     FROM ProductSales
    ->     GROUP BY region
    -> )
    ->
    -> SELECT
    ->     region,
    ->     regional_total
    -> FROM RegionalSales
    -> WHERE regional_total > (
    ->     SELECT AVG(regional_total)
    ->     FROM RegionalSales
    -> );
