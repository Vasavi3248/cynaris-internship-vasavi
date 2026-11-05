# Day 4 -- SQL Subqueries & CTEs

This folder contains the SQL practical work for Day 4 of the Cynaris
Solutions internship.

## Learning Objective

Write advanced SQL queries using correlated subqueries and Common Table
Expressions (CTEs) for multi-step data analysis.

## Practical Tasks

  -----------------------------------------------------------------------
  Task                    Description             SQL technique
  ----------------------- ----------------------- -----------------------
  1                       Find sales records      Non-correlated subquery
                          above the overall       
                          average sales amount    

  2                       Find the top-performing Correlated subquery
                          sale in each region     

  3                       Rewrite the             CTE
                          average-sales query     
                          using the `WITH` clause 

  4                       Calculate regional      Chained CTEs
                          sales and identify      
                          regions above the       
                          average regional total  
  -----------------------------------------------------------------------

## Database Assumptions

The queries are written for a table named `sales` with the following
columns:

  Column           Description
  ---------------- ------------------
  `sale_id`        Sale identifier
  `product_name`   Product name
  `category`       Product category
  `quantity`       Quantity sold
  `price`          Price per item
  `region`         Sales region

The examples calculate sales value as `quantity * price`. If your actual
database or column names differ, update the SQL file to match your
schema before running it.

## How to Run

1.  Open your MySQL client.

2.  Select the database containing your `sales` table. For example:

    ``` sql
    USE cynaris_internship;
    ```

3.  Open `queries_day4.sql`.

4.  Execute the queries one at a time.

5.  Verify the output against your actual data.

## Files

-   `queries_day4.sql` -- SQL solutions for the four practical tasks.
-   `work_log_day4.md` -- Day 4 work log and learning outcomes.

## Important Notes

-   Task 2 returns all tied top-performing sales within a region.
-   The CTEs are named query results available to the statement that
    follows the `WITH` clause.
-   A CTE can improve readability and organization, but it is not
    inherently faster than an equivalent subquery. Check the query plan
    and database version for performance behavior.
-   Result values depend on the records in your own `sales` table; do
    not assume sample values unless they match your data.

## GitHub Submission

-   **Branch:** `feature/week-1-day-4`
-   **Suggested commit message:**
    `feat: complete SQL subqueries and CTE tasks`
-   **Suggested Pull Request title:**
    `Week 1 Day 4 - SQL Subqueries and CTEs`
