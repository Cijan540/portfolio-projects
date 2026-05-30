# Lessons Learned
## Project RxSpeed - Prescription Fulfillment Optimization
### CMedicare Plus Company

**Date:** May 26, 2026
**Prepared by:** Cizen Bhatta, Lead Business Analyst

> Fictional portfolio project. All details are synthetic.

---

## Purpose
This document captures the key lessons from Project RxSpeed — what worked,
what didn't, and what should change in future engagements.

---

## What Went Well

### 1. Starting with data, not documents
Beginning Phase 1 with quantitative baseline analysis (24 months of operational
data) before writing the Charter or Business Case grounded every downstream
artifact in evidence. The Business Case ROI, the Charter objectives, and the
dashboard requirements all traced back to real numbers.

### 2. Traceability chain end-to-end
Every functional requirement traced to a business requirement, every business
requirement to a baseline finding, and every test case back to a functional
requirement. This unbroken chain made scope creep nearly impossible and gave
stakeholders confidence at every gate.

### 3. Modular delivery in Agile sprints
Sequencing the dashboard build across three sprints — foundation first, then
drill-down, then alerts — produced a usable increment at every sprint review
and surfaced data issues early.

### 4. Honest distinction between data-proven and hypothesized findings
The decision to flag step-level bottlenecks (insurance, pharmacist verification,
pickup) as hypotheses rather than data-proven facts protected analytical
credibility and identified a clear next data-collection step.

---

## What Could Be Improved

### 1. Initial data volume calibration
The first prescriptions dataset generation produced 18.5 million records before
sampling — a 42-minute run. Volume parameters should be calibrated more
carefully upfront to land in a usable range without rework.

### 2. Cross-source data architecture
The peak-hour heatmap used a different data source than the rest of the
dashboard, requiring data blending to enable consistent filter actions. A
unified data model from the start would have avoided this complexity.

### 3. Step-level timestamps not captured
The synthetic prescription data captured total wait time but not per-step
timing, preventing definitive bottleneck attribution. Future iterations would
include step-entry/exit timestamps.

### 4. UAT planning could start earlier
Test cases were drafted at the end of the build phase. Drafting acceptance
criteria-aligned test cases at the same time as user stories would have caught
implementation gaps earlier.

---

## Action Items for Future Projects

| # | Action | Rationale |
|---|--------|-----------|
| 1 | Always start with quantitative baseline before writing artifacts | Grounds the entire project in evidence |
| 2 | Calibrate synthetic data volume in a small pilot run before full generation | Avoids rework loops |
| 3 | Design a unified data model upfront — minimize cross-source dependencies | Reduces blending complexity |
| 4 | Capture step-level timestamps in any process analysis dataset | Enables true bottleneck attribution |
| 5 | Author test cases alongside user stories, not at the end | Surfaces gaps during build, not after |
| 6 | Document hypothesized vs proven findings explicitly | Protects analytical credibility |

---

## Reflection
Project RxSpeed reinforced a core BA principle: rigor in analysis builds the
authority to recommend action. Every decision, scope choice, requirement, and
KPI traced to evidence, and the result was a defensible, executive-ready
solution. Where assumptions remained, they were named openly rather than
disguised as data. This is the standard worth carrying into future projects.