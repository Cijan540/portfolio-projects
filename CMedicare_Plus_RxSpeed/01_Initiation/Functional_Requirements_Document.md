# Functional Requirements Document (FRD)
## Project RxSpeed - Prescription Fulfillment Optimization
### CMedicare Plus Company

**Document Version:** 1.0
**Date:** May 26, 2026
**Prepared by:** Cizen Bhatta, Lead Business Analyst

> Fictional portfolio project. All details are synthetic.

---

## 1. Purpose

This document specifies the functional requirements for the RxSpeed analytics
dashboard. Each functional requirement (FR) traces to a business requirement
(BR) from the BRD and is written to be specific and testable.

---

## 2. Functional Requirements

### Dashboard Display & Visualization

| ID | Functional Requirement | Traces To |
|----|------------------------|-----------|
| FR-1 | The dashboard shall display average wait time as a monthly trend line with a horizontal target line at 15 minutes | BR-1 |
| FR-2 | The dashboard shall display a heatmap of average wait time by day of week and hour of day | BR-3 |
| FR-3 | The dashboard shall display a ranked list of stores by average wait time, highlighting the worst performers | BR-2 |
| FR-4 | The dashboard shall display average wait time by region and by state | BR-2 |
| FR-5 | The dashboard shall display the relationship between wait time and customer satisfaction score | BR-4 |

### Filtering & Drill-Down

| ID | Functional Requirement | Traces To |
|----|------------------------|-----------|
| FR-6 | The dashboard shall allow users to filter all views by date range | BR-1 |
| FR-7 | The dashboard shall allow drill-down from chain → region → district → store | BR-2 |
| FR-8 | The dashboard shall allow filtering by drug category and insurance type | BR-1 |

### Role-Based Views

| ID | Functional Requirement | Traces To |
|----|------------------------|-----------|
| FR-9 | The dashboard shall provide an Executive view showing chain-level KPIs and trends | BR-6 |
| FR-10 | The dashboard shall provide a District Manager view comparing stores within a region | BR-6 |
| FR-11 | The dashboard shall provide a Store Manager view showing single-store performance | BR-6 |

### Alerting

| ID | Functional Requirement | Traces To |
|----|------------------------|-----------|
| FR-12 | The dashboard shall visually flag stores whose average wait time exceeds the 15-minute target | BR-5 |
| FR-13 | The dashboard shall highlight stores trending upward in wait time over a rolling period | BR-5 |

### Compliance & Data

| ID | Functional Requirement | Traces To |
|----|------------------------|-----------|
| FR-14 | The dashboard shall not display any Protected Health Information (PHI) | BR-7 |
| FR-15 | The dashboard shall refresh data at least once daily | BR-1 |

---

## 3. Non-Functional Requirements

These define quality attributes (how well the system performs), not features.

| ID | Non-Functional Requirement |
|----|----------------------------|
| NFR-1 | Dashboard views shall load within 5 seconds under normal conditions |
| NFR-2 | The dashboard shall be accessible on desktop and tablet devices |
| NFR-3 | The dashboard shall support at least 250 concurrent users |
| NFR-4 | All data handling shall comply with HIPAA and HITECH requirements |
| NFR-5 | The interface shall be usable by non-technical staff with minimal training |

---

## 4. Assumptions
- Source data is available in the structure defined by the data dictionary
- Tableau is the chosen visualization platform
- User roles are managed via the organization's existing access system

---

## 5. Traceability Summary

Every functional requirement traces back to a business requirement, which in
turn traces to a business objective and a baseline finding. This ensures the
solution delivers only what the business actually needs, with no scope creep.