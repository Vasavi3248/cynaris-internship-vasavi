# Day 4 Work Log -- SQL Subqueries & CTEs

**Internship:** Cynaris Solutions\
**Week:** 1\
**Day:** 4\
**Topic:** SQL Subqueries & Common Table Expressions (CTEs)\
**Deliverable:** `queries_day4.sql`\
**Branch:** `feature/week-1-day-4`

## Objective

Practice advanced SQL techniques using non-correlated subqueries,
correlated subqueries, and Common Table Expressions to perform
multi-step sales analysis.

## Tasks Completed

### Task 1: Non-correlated subquery -- Above-average sales

-   Calculated the average sales amount using `AVG(quantity * price)`.
-   Used the result in an outer query to retrieve sales records whose
    total sales exceeded the average.
-   Learned that a non-correlated subquery can execute independently of
    the outer query.

### Task 2: Correlated subquery -- Top performer per region

-   Compared each sale with the maximum sales amount in its region.
-   Used table aliases (`s1` and `s2`) to distinguish the outer and
    inner query references.
-   Learned that a correlated subquery refers to columns from the outer
    query and is evaluated in relation to each outer row.

### Task 3: Rewrite a nested subquery using a CTE

-   Created a CTE named `AverageSales` using the `WITH` clause.
-   Calculated average sales in the CTE and used it in the main query.
-   Practiced making a query easier to read by separating a calculation
    into a named result.

### Task 4: Chain two CTEs

-   Created `ProductSales` to calculate each sale's total.
-   Created `RegionalSales` to aggregate sales by region.
-   Used the second CTE in the final query to identify regions whose
    totals were above the average regional total.

## Key Learning Outcomes

-   Understand the difference between correlated and non-correlated
    subqueries.
-   Use aggregate functions inside subqueries.
-   Use table aliases to make multi-table or nested queries clearer.
-   Define and reference CTEs with the `WITH` clause.
-   Chain multiple CTEs for step-by-step analysis.
-   Understand that a CTE improves query organization and readability;
    it does not automatically guarantee better performance than a
    subquery.

## Files / Evidence

-   `queries_day4.sql` -- SQL solutions for all four practical tasks.
-   Add screenshots of successful query execution here if required.

## GitHub Submission

-   **Target branch:** `feature/week-1-day-4`
-   **Suggested commit message:**
    `feat: complete SQL subqueries and CTE tasks`
-   **Suggested pull request title:**
    `Week 1 Day 4 - SQL Subqueries and CTEs`

## Status

Update this section after testing and submission: - \[ \] All four
queries executed successfully. - \[ \] `queries_day4.sql` committed and
pushed. - \[ \] Pull Request created with the deliverable linked. - \[
\] CIA insights documented.

## Reflection

The practical exercises helped me understand how subqueries and CTEs can
be used to solve multi-step data analysis problems. I also learned to
organize complex SQL logic into smaller, understandable steps.
