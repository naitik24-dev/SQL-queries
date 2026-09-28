# SQL Revision & IPL Data Analysis 🏏📊

A practical SQL revision project using IPL ball-by-ball data from 2008–2022.

## Project Objective

This project strengthens SQL fundamentals through **50 practical questions** based on real-world IPL ball-by-ball data.

### Concepts covered
- `WHERE` — filtering rows
- `ORDER BY` — sorting results
- `GROUP BY` — grouping records
- `HAVING` — filtering grouped/aggregated results
- `SUM()` and `COUNT()` — aggregation
- `BETWEEN` and `IN`
- Combining filtering, grouping, aggregation, HAVING and sorting

> This revision set intentionally focuses on these concepts and excludes JOINs, CTEs and window functions.

## Dataset

The working table is `ipl`. The version used for this revision contains approximately **225,954 rows and 17 columns**, covering IPL data from 2008–2022.

Important columns include:

| Column | Description |
|---|---|
| `batter` | Batter involved in the delivery |
| `bowler` | Bowler involved in the delivery |
| `BattingTeam` | Team batting during the delivery |
| `batsman_run` | Runs credited to the batter |
| `total_run` | Total runs recorded for the delivery |
| `extras_run` | Extra runs recorded |
| `overs` | Over associated with the delivery |
| `innings` | Innings number |
| `isWicketDelivery` | Wicket indicator |
| `kind` | Dismissal type |
| `extra_type` | Extra type, when applicable |

See [`DATASET_DESCRIPTION.md`](DATASET_DESCRIPTION.md) for details.

## Repository Structure

```text
SQL-Revision-IPL-Analysis/
├── README.md
├── SQL_Questions_and_Answers.sql
├── DATASET_DESCRIPTION.md
├── .gitignore
└── IPL_Dataset.csv          # Add your dataset before publishing
```

## Example

```sql
SELECT
    batter,
    SUM(batsman_run) AS total_runs
FROM ipl
GROUP BY batter
HAVING SUM(batsman_run) > 500
ORDER BY total_runs DESC;
```

This groups deliveries by batter, calculates total batter runs, keeps batters above 500 runs, and sorts the result from highest to lowest.

## SQL Workflow

**WHERE → GROUP BY → Aggregate → HAVING → ORDER BY**

1. `WHERE` filters individual rows.
2. `GROUP BY` creates groups.
3. `SUM()` / `COUNT()` calculate group-level values.
4. `HAVING` filters groups after aggregation.
5. `ORDER BY` sorts the final result.

## Learning Outcomes

- Translating analytical questions into SQL
- Choosing between `WHERE` and `HAVING`
- Using `GROUP BY` with aggregate functions
- Calculating totals and counts
- Filtering before and after aggregation
- Sorting analytical results
- Working with structured real-world data

## Tools

- SQL / MySQL
- Git & GitHub
- IPL ball-by-ball dataset

## Future Improvements

Possible next steps: subqueries, JOINs, CTEs, window functions, date analysis and Power BI visualization.

## Author

**Naitik Chauhan**  
BCA Student | Aspiring Data Analyst / Data Professional
