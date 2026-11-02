# SQL Fundamentals — Week 1, Day 1

## Objective
Practice SQL SELECT statements and filtering conditions using a sample sales database.

## Tasks
- Created a sample sales database.
- Created customers, products, and orders tables.
- Practiced SELECT and WHERE statements.
- Used AND, OR, and NOT operators.
- Practiced LIKE, IN, BETWEEN, and IS NULL.
- Exported query results to CSV.

## AI Tutor Insights
Common SQL mistakes include:
- Incorrect WHERE conditions.
- Misusing AND and OR.
- Using = NULL instead of IS NULL.
- Using SELECT * when unnecessary.
- Incorrect use of LIKE, IN, and BETWEEN.
- Failing to validate query results.

## Learning Outcome
I learned how to retrieve and filter data using SQL. I also learned why validating query results is important for accurate data analysis.

## Deliverables
- queries_day1.sql
- sales_results.csv
- README.md
- work_log.md
## Week 1 — Day 2: SQL JOINs

### Tasks Completed
- Practiced INNER JOIN, LEFT JOIN, and RIGHT JOIN.
- Simulated FULL OUTER JOIN using UNION.
- Investigated duplicate rows in JOIN results.
- Practiced SELF JOIN using an employee-manager relationship.
- Used table aliases in SQL queries.

### AI Tutor Insights
- INNER JOIN returns only matching records from both tables.
- LEFT JOIN returns every record from the left table, including unmatched records.
- Duplicate rows can occur when multiple records match the JOIN condition.
- SELF JOIN is useful for finding relationships within the same table.

### Business Reporting Example
A retail company can use INNER JOIN to report products with sales. LEFT JOIN can show all products, including products that have not been sold.

### Deliverables
- `queries_day2.sql`
- Day 2 CSV results, if required.
