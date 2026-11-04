# Day 3 Work Log - SQL Aggregations

## Topic
SQL Aggregations - GROUP BY & HAVING

## Tasks completed
- Created a MySQL database and a `sales` table.
- Inserted sample retail sales records.
- Practiced `COUNT()`, `SUM()`, `AVG()`, `MAX()`, and `MIN()`.
- Grouped sales by region and product category.
- Grouped sales by month.
- Filtered grouped results using `HAVING`.
- Practiced the `SUM() OVER (PARTITION BY region)` window function.
- Identified five retail business KPIs that can be calculated using SQL.

## Key learnings
- Aggregate functions summarize values across rows.
- `GROUP BY` combines rows with matching group values for summary calculations.
- `HAVING` filters groups based on aggregate results.
- Window functions calculate values across related rows without collapsing the individual records.

## Deliverable
`queries_day3.sql`

## Validation
The supplied sample dataset contains 12 sales records and has total revenue of 144000.00.
