# Day 5 Work Log – Python for Data: Pandas Basics

**Date:** 06 November 2026  
**Topic:** Pandas Basics and Exploratory Data Analysis

## Work completed
- Loaded the Titanic CSV dataset into a Pandas DataFrame.
- Inspected records using `head()` and `tail()`.
- Reviewed column names, data types, and non-null counts using `info()`.
- Generated descriptive statistics using `describe()`.
- Used `value_counts()` to understand categorical values.
- Selected relevant columns and filtered passenger records.
- Checked missing values and handled missing age and embarkation-town values.
- Grouped records by gender and passenger class and calculated counts, averages, and survival rates.
- Exported the cleaned DataFrame to a CSV file.

## Key learning
- Pandas makes it easier to load, inspect, clean, filter, group, and export tabular data.
- `isnull().sum()` helps identify missing values.
- `fillna()` can replace missing values using a suitable statistic or category.
- `groupby()` with `agg()` summarizes data by category.
- `to_csv(index=False)` exports a DataFrame without adding the row index as an extra column.

## CIA / AI learning notes
The useful Pandas methods for exploratory data analysis include:
- `read_csv()` – load a CSV file.
- `head()` / `tail()` – preview records.
- `shape`, `columns`, and `dtypes` – understand dataset structure.
- `info()` – inspect data types and missing-value counts.
- `describe()` – calculate descriptive statistics.
- `value_counts()` – inspect category frequencies.
- `isnull().sum()` – identify missing values.
- `groupby()` and `agg()` – summarize groups.
- `sort_values()` – sort records.
- `to_csv()` – export cleaned data.

## Deliverable
`analysis_day5.ipynb` – Jupyter Notebook with EDA and data cleaning.

## Status
Complete after running all notebook cells, checking the output, committing the notebook, and pushing the branch.
