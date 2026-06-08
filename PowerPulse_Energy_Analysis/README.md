
# PowerPulse — US Energy Transition Analysis
## A Business Intelligence Portfolio Project

---

## Project Overview
This project analyzes 22 years of US electricity generation data from the
US Energy Information Administration (EIA) to understand America's transition
from fossil fuels to renewable energy across all 50 states from 2001 to 2021.

---

## Business Questions Answered
- Which energy source dominated US electricity generation over 22 years?
- Which states are renewable energy leaders and which are laggards?
- How much has Wind and Solar energy grown since 2001?
- Which regions are leading the energy transition?
- What is the complete energy transition status of every US state?

---

## Tools and Technologies
| Tool | Purpose |
|---|---|
| Python | Data cleaning and processing |
| Pandas | Data manipulation and exploration |
| PostgreSQL | Relational database and SQL analysis |
| Jupyter Notebook | Interactive analysis environment |
| VS Code | Development environment |

---

## Dataset
- **Source:** US Energy Information Administration (EIA)
- **Period:** 2001 to 2022 (2022 incomplete — 5 months only)
- **Raw Rows:** 496,774
- **Clean Rows:** 95,286
- **States:** 51 (including Washington DC)
- **Energy Sources:** 10

---

## Project Structure

    PowerPulse_Energy_Analysis/
    |
    |-- data/
    |   |-- raw/                    # Original CSV files
    |   |-- processed/              # Cleaned CSV files
    |
    |-- sql/
    |   |-- 01_create_tables.sql    # Create PostgreSQL tables
    |   |-- 02_load_data.sql        # Load CSVs into database
    |   |-- 03_analysis_queries.sql # 10 business analysis queries
    |
    |-- notebooks/
    |   |-- powerpulse_analysis.ipynb  # Full analysis notebook
    |
    |-- docs/
    |   |-- data_dictionary.md      # Column and table definitions
    |   |-- methodology.md          # Data cleaning decisions
    |   |-- findings_summary.md     # Business insights
    |
    |-- visualizations/             # Charts and screenshots
    |-- findings/                   # Executive summary
    |-- README.md                   # This file

---

## SQL Concepts Demonstrated
| Query | Concept |
|---|---|
| Query 1 | GROUP BY and aggregation |
| Query 2 | JOIN — two tables |
| Query 3 | Multi-table JOIN — three tables |
| Query 4 | LAG() window function |
| Query 5 | LEAD() window function |
| Query 6 | RANK() window function |
| Query 7 | DENSE_RANK() window function |
| Query 8 | SUM() OVER running total |
| Query 9 | NTILE() quartile classification |
| Query 10 | Chained CTEs — Executive Scorecard |

---

## Key Findings
- Coal was the #1 energy source at 33,732 TWh over 22 years
- Renewable energy grew nearly 3 times from 2001 to 2021
- Wind energy grew 56 times — from 6.74 TWh to 379 TWh
- Vermont leads the nation at 99.73% renewable energy
- Mississippi is the least renewable state at just 2.71%
- Texas is both the #1 total generator and #1 renewable generator
- The West region leads all regions in renewable energy percentage
- 13 states are still energy transition Laggards

---

## How to Run This Project

Step 1 — Create the database
    psql -U postgres -c "CREATE DATABASE powerpulse;"
    psql -U postgres -d powerpulse -f sql/01_create_tables.sql
    psql -U postgres -d powerpulse -f sql/02_load_data.sql

Step 2 — Run the notebook
    Open notebooks/powerpulse_analysis.ipynb in VS Code
    and run all cells from top to bottom.

---

## Author
Built as a Business Analyst portfolio project to demonstrate
SQL, Python, and data analysis skills.
