# Day 3 - SQL Aggregations (GROUP BY & HAVING)

## Objective
Practice SQL aggregate functions, grouping, filtering grouped results, and a window function using a sample retail sales dataset.

## Requirements
- MySQL 8.0 or compatible version
- MySQL Workbench or MySQL command-line client

## Files
- `queries_day3.sql` - database/table creation, sample data, and all practice queries.
- `day3_worklog.md` - summary of completed tasks and key learnings.

## How to run
1. Open MySQL Workbench or your MySQL client.
2. Open `queries_day3.sql`.
3. Execute the script from top to bottom.
4. Review the result grid after each SELECT statement.

> The script creates a database named `sql_internship` and a table named `sales`. The sample INSERT statements are intended for a fresh table. If you run the INSERT section again, duplicate sample records will be added.

## Table structure

| Column | Type | Description |
|---|---|---|
| `sale_id` | INT, primary key, auto increment | Unique sale record ID |
| `region` | VARCHAR(50) | Sales region |
| `category` | VARCHAR(50) | Product category |
| `sale_date` | DATE | Date of sale |
| `amount` | DECIMAL(10,2) | Sale amount |
| `quantity` | INT | Quantity sold |

## Concepts covered
1. `COUNT()` - counts rows.
2. `SUM()` - calculates a total.
3. `AVG()` - calculates an average.
4. `MAX()` - returns the highest value.
5. `MIN()` - returns the lowest value.
6. `GROUP BY` - groups rows by one or more columns.
7. `HAVING` - filters groups after aggregation.
8. `SUM() OVER (PARTITION BY ...)` - calculates a group total while retaining individual rows.

## Five retail business KPIs
- Total revenue: `SUM(amount)`
- Number of sales records: `COUNT(*)`
- Average sale amount: `AVG(amount)`
- Revenue by region: `GROUP BY region`
- Revenue by category: `GROUP BY category`

## Expected overall checks for the supplied sample data

| Metric | Expected value |
|---|---:|
| Number of records | 12 |
| Total revenue | 144000.00 |
| Average sale amount | 12000.00 |
| Highest sale | 25000.00 |
| Lowest sale | 4000.00 |

## Notes
- `WHERE` filters individual rows before grouping.
- `HAVING` filters aggregated groups after `GROUP BY`.
- The monthly grouping uses MySQL's `DATE_FORMAT()` function.
