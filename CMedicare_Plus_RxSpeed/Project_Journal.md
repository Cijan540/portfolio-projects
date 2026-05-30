# Project Journal - CMedicare Plus RxSpeed

## Purpose
This journal documents my work as the Lead Business Analyst on Project RxSpeed,
capturing key decisions, design choices, and reflections that inform the final
portfolio case study.

---

## May 18, 2026 - Project Setup & Stores Dataset

### What I Did
- Set up the project workspace and folder structure
- Created the first Jupyter notebook: `01_data_generation_stores.ipynb`
- Generated synthetic data for 247 CMedicare Plus pharmacy locations
- Built in realistic regional performance variance (Midwest stores with lower
  baseline performance to align with the project narrative)
- Validated data quality through distribution analysis and completeness checks
- Exported the dataset to `data/stores.csv`

### Key Design Decisions
- Random seed of 42 for reproducibility across all runs
- 75% drive-thru penetration based on typical retail pharmacy benchmarks
- Regional variance built into base_performance_score to drive realistic
  operational patterns in downstream datasets
- 12 districts spanning Midwest and Southeast regions

### Artifacts Produced
- `notebooks/01_data_generation_stores.ipynb`
- `data/stores.csv` (247 rows × 11 columns)

### BA Reflection
Real BAs never start analysis without first validating data integrity.
Performing distribution checks and null counts before saving the dataset
mirrors what's done in production data pipelines and analytical projects.

---

## May 19, 2026 - Staff Dataset

### What I Did
- Created notebook `02_data_generation_staff.ipynb`
- Generated approximately 2,500 staff records distributed across 247 stores
- Implemented size-based staffing rules (larger stores have more staff)
- Modeled realistic certification distribution (35% Junior, 45% Mid, 20% Senior)
- Validated data quality and exported to `data/staff.csv`

### Key Design Decisions
- Pharmacy Technicians outnumber Pharmacists, matching real industry ratios
- Staff distribution follows store size tiers (8,000 / 10,000 / 12,000 / 15,000 sqft)
- Built a foreign-key relationship to the stores table via `store_id`

### Artifacts Produced
- `notebooks/02_data_generation_staff.ipynb`
- `data/staff.csv` (~2,500 rows × 7 columns)

### BA Reflection
Modeling realistic staffing constraints matters because workload imbalance
is often the root cause of operational bottlenecks. This dataset will be
critical for staff utilization analysis later in the project.

---

## May 20, 2026 - Prescriptions Dataset (Core Fact Table)

### What I Did
- Created notebook `03_data_generation_prescriptions.ipynb`
- Generated and sampled 500,000 prescription records covering 24 months
- Validated the engineered patterns: wait time progression, regional variance,
  and peak hour bottlenecks at lunch and evening rush
- Saved to `data/prescriptions.csv`

### Key Design Decisions
- Encoded operational behavior as configurable parameters (hourly load, day-of-week,
  seasonality, regional variance, and drug-complexity multipliers)
- Modeled a deliberate wait-time decline trajectory across the 24-month period

### Validation Findings
- Wait times increased from 19.2 min (Jan 2023) to 30.6 min (Dec 2024) — a 59% increase
- Midwest stores average 24.8 min vs Southeast at 19.0 min (5.8 min gap)
- Peak bottlenecks: 11am-1pm and 5pm-7pm consistently above 25 min
- Drug category distribution matches industry norms (65% generic)

### Technical Note
Initial generation produced 18.5M records; I optimized the volume parameters and
regenerated to land at a clean 500K-record dataset that preserves all engineered
patterns while remaining tractable for analysis and Tableau.

### Artifacts Produced
- `notebooks/03_data_generation_prescriptions.ipynb`
- `data/prescriptions.csv` (500,000 rows × 12 columns)

### BA Reflection
This is the moment where the project narrative becomes evidence-based. The numbers
I'm working with now will directly drive the Business Case ROI, the Charter
objectives, and the dashboard's storytelling.

---

## May 21, 2026 - Satisfaction & Daily Metrics (Foundation Complete)

### What I Did
- Created notebooks `04_data_generation_satisfaction.ipynb` and
  `05_data_generation_daily_metrics.ipynb`
- Generated 50,000 customer satisfaction responses correlated with wait times
- Built a daily aggregate table by rolling up the prescriptions fact table and
  joining operational, satisfaction, and workforce data
- Completed all five datasets forming a full star schema

### Key Design Decisions
- Modeled an explicit causal link between operations and customer perception
  (satisfaction scores inversely correlate with wait times)
- Built a two-tier architecture: a transactional fact table for deep analysis
  and a daily aggregate table for fast dashboard rendering
- Made a data-integrity decision to leave average satisfaction null where no
  surveys existed, rather than imputing values that could bias analysis

### Data Architecture Delivered
| Dataset | Type | Rows |
|---------|------|------|
| stores.csv | Dimension | 247 |
| staff.csv | Dimension | ~2,500 |
| prescriptions.csv | Fact (transactional) | 500,000 |
| customer_satisfaction.csv | Fact (linked) | 50,000 |
| daily_store_metrics.csv | Aggregate (derived) | ~150,000 |

### Artifacts Produced
- `notebooks/04_data_generation_satisfaction.ipynb`
- `notebooks/05_data_generation_daily_metrics.ipynb`
- `data/customer_satisfaction.csv` (50,000 rows × 8 columns)
- `data/daily_store_metrics.csv` (~150,000 rows × 13 columns)

### BA Reflection
Starting with data instead of documents is a deliberate choice. Real BA work
requires validating that a problem is real and quantifiable before proposing
solutions. This foundation is now the evidence base for every downstream artifact.

---



## May 26, 2026 - Baseline Analysis Complete

### What I Did
- Created notebook `06_baseline_analysis.ipynb`
- Conducted six quantitative analyses on the data foundation to establish 
  current-state KPIs and validate the business problem
- Generated six portfolio-ready charts saved to the outputs folder

### Key Findings (The Evidence Base)
1. **Wait time trend**: Increased from 19.2 min (Jan 2023) to 30.6 min 
   (Dec 2024) — a 59% rise, double the 15-min target
2. **Store rankings**: All 10 worst-performing stores are in the Midwest, 
   the worst averaging ~38 min
3. **Peak hours**: Bottlenecks concentrate at 11am-1pm and 5pm-7pm, peaking 
   at 34 min on Tuesday evenings
4. **Regional gap**: Midwest (24.8 min) runs ~30% slower than Southeast 
   (19.0 min); all Midwest states rank worse than all Southeast states
5. **Satisfaction link**: Satisfaction falls from 9.5 (under 10 min) to 3.4 
   (over 30 min), dropping below the acceptable threshold past 15 min
6. **Business impact**: ~$88M in annual lost revenue, with ~$35M realistically 
   recoverable; payback period under one week against a $485K investment

### Artifacts Produced
- `notebooks/06_baseline_analysis.ipynb`
- Six charts in `outputs/`: wait time trend, worst stores, peak hour heatmap, 
  regional comparison, satisfaction correlation, business impact

### BA Reflection
This analysis transforms the project from assumption-driven to evidence-driven. 
Every number now traceable to the data: the Charter objectives, the Business 
Case ROI, and the dashboard requirements all flow from these six findings. 
The work mirrors a real current-state assessment that a consulting engagement 
would deliver before proposing any solution.

---


## May 26, 2026 (cont.) - Phase 1 Documents Complete

### What I Did
- Defined a four-tier KPI Framework linking baseline values to future-state targets
- Authored the Project Charter, grounded in the baseline analysis findings
- Built the Business Case with cost-benefit analysis and ROI justification
- Created the Stakeholder Register cataloging all parties and engagement strategies
- Produced the RACI Matrix to clarify ownership across project activities
- Mapped stakeholders on a Power/Interest Grid to prioritize engagement

### Artifacts Produced
- `01_Initiation/KPI_Framework.md`
- `01_Initiation/Project_Charter.md`
- `01_Initiation/Business_Case.md`
- `01_Initiation/Stakeholder_Register.md`
- `01_Initiation/RACI_Matrix.md`
- `01_Initiation/Power_Interest_Grid.md`

### Key Decisions
- Grounded all Charter and Business Case figures in real baseline data rather 
  than assumptions
- Documented financial assumptions transparently in the Business Case
- Assigned a single Accountable party per RACI activity to prevent ownership gaps
- Concentrated stakeholder engagement on the sponsor and CPO (Manage Closely)

### BA Reflection
Phase 1 is now complete. The initiation documents form a coherent, evidence-based 
foundation: every objective traces to a finding, every financial figure to a data 
point, and every stakeholder to an engagement plan. This is the groundwork that 
makes the requirements phase credible.

---


## May 26, 2026 (cont.) - Phase 2: Requirements Complete

### What I Did
- Mapped the as-is prescription fulfillment process and identified delay points
- Distinguished data-proven findings from hypothesized root causes (a deliberate 
  intellectual-honesty decision)
- Designed the to-be process, layering real-time visibility and alerts on top of 
  the existing regulated workflow
- Authored the Business Requirements Document (BRD) with full traceability to 
  baseline findings
- Authored the Functional Requirements Document (FRD) with specific, testable 
  "shall" statements
- Built a Requirements Traceability Matrix (RTM) connecting findings → objectives 
  → business requirements → functional requirements → validation

### Artifacts Produced
- `02_Requirements/As_Is_Process_Flow.md`
- `02_Requirements/To_Be_Process_Flow.md`
- `02_Requirements/Business_Requirements_Document.md`
- `02_Requirements/Functional_Requirements_Document.md`
- `02_Requirements/Requirements_Traceability_Matrix.md`

### Key Decisions
- Flagged step-level bottlenecks (insurance, verification, pickup) as hypotheses 
  requiring validation rather than presenting assumptions as facts
- Separated functional requirements (what the system does) from non-functional 
  requirements (how well it performs)
- Ensured every functional requirement traces to a documented business need

### BA Reflection
Phase 2 is the analytical heart of the project. The traceability chain, from a 
data finding all the way to a testable requirement, is what separates rigorous 
requirements engineering from ad-hoc feature lists. The honesty about proven vs 
hypothesized findings reflects how credible analysis actually works.

---
## May 26, 2026 (cont.) - Phase 3: Agile Artifacts Complete

### What I Did
- Decomposed functional requirements into 11 user stories using the 
  "As a / I want / so that" format, each with Given/When/Then acceptance criteria
- Prioritized the backlog using MoSCoW (8 Must, 2 Should, 1 Could)
- Planned delivery across three two-week sprints with story-point estimates 
  and a clear sprint goal for each
- Documented Sprint 1 ceremonies: planning, daily standups, review, and retrospective
- Defined a Definition of Done applied to all stories

### Artifacts Produced
- `03_Agile_Artifacts/Product_Backlog.md`
- `03_Agile_Artifacts/Sprint_Plan.md`
- `03_Agile_Artifacts/Sprint_Ceremonies.md`

### Key Decisions
- Sequenced sprints by dependency: foundation views first, then drill-down, then 
  alerts and compliance
- Included a realistic mid-sprint blocker (data dictionary ambiguity) and 
  corresponding retrospective action items to reflect genuine Agile practice
- Extended the traceability chain into the backlog: every story links to a 
  functional requirement

### BA Reflection
Phase 3 demonstrates the ability to operate within a modern Agile/Scrum delivery 
framework, not just produce static documents. The user stories keep the focus on 
user value, and the ceremony log shows how a team plans, syncs, demonstrates, and 
continuously improves across sprints.

---