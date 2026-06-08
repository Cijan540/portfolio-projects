
# PowerPulse Methodology
## US Energy Transition Analysis 2001-2022

---

## Project Overview
This project analyzes 22 years of US electricity generation data from the EIA
to understand the transition from fossil fuels to renewable energy across all 50 states.

---

## Data Cleaning Decisions

### 1. Filter to Total Electric Power Industry Only
**Why:** The raw data contains 6 producer types. The other 5 types are subsets
of Total Electric Power Industry. Keeping all types would double count
the same electricity generation.

### 2. Remove US-TOTAL State
**Why:** US-TOTAL is a national rollup row — not a real state.
Including it would skew every aggregation and make state level
analysis inaccurate.

### 3. Remove Total, Other, Other Gases, Pumped Storage
**Why:**
- Total — another rollup, already counted in individual sources
- Other and Other Gases — too vague for meaningful analysis
- Pumped Storage — consumes electricity to pump water uphill,
  does not generate electricity

### 4. Clip Negative Values to Zero
**Why:** Pumped Storage causes negative generation values.
These represent energy consumption not generation.
Clipping to zero ensures all aggregations are accurate.

### 5. Exclude 2022 from Trend Analysis
**Why:** 2022 only contains 5 months of data — January to May.
Including it would make 2022 appear as a dramatic drop
when in reality the data is simply incomplete.

---

## Data Enrichment Decisions

### 1. Adding Carbon Intensity
**Why:** The raw data tells us HOW MUCH electricity was generated
but not HOW DIRTY it was. Carbon intensity values from the IPCC
allow us to quantify the environmental impact of each energy source.

**Source:** IPCC 2014 — Lifecycle Emissions report

### 2. Adding US Regions
**Why:** State level analysis alone misses geographic patterns.
Adding Census regions allows us to answer questions like
"Is the West cleaner than the South?" without writing complex queries.

### 3. Adding Renewable Flag
**Why:** A simple 1/0 flag on each energy source makes renewable
vs non renewable analysis as simple as WHERE is_renewable = 1.
No complex CASE statements needed in every query.

---

## SQL Design Decisions

### Why PostgreSQL?
- Industry standard relational database
- Full support for window functions
- Used by companies like Apple, Instagram, and Spotify

### Why Foreign Keys?
- Ensures data integrity — no orphaned records
- Forces correct load order — states before generation
- Mirrors real world production database design

### Why CTEs over Subqueries?
- More readable and maintainable
- Easier to debug step by step
- Preferred in professional SQL codebases

---

## Tools Used
- **Python** — Data cleaning and processing
- **Pandas** — Data manipulation
- **PostgreSQL** — Database and SQL analysis
- **Jupyter Notebook** — Interactive analysis environment
- **VS Code** — Development environment
