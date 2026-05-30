# Sprint Plan
## Project RxSpeed - Prescription Fulfillment Optimization
### CMedicare Plus Company

**Document Version:** 1.0
**Date:** May 26, 2026
**Prepared by:** Cizen Bhatta, Business Analyst / Product Owner

> Fictional portfolio project. All details are synthetic.

---

## Approach
The dashboard will be delivered over three two-week sprints. Stories are sequenced
so each sprint produces a usable increment. Effort is estimated in story points
(Fibonacci scale: 1, 2, 3, 5, 8).

## Team Capacity
- Sprint length: 2 weeks
- Estimated team velocity: ~15-18 story points per sprint

---

## Sprint 1: Foundation & Core Views
**Sprint Goal:** Deliver the core data foundation and primary executive/store views
so stakeholders can see wait-time performance.

| Story | Description | Priority | Points |
|-------|-------------|----------|--------|
| US-6 | Date range filter | Must | 3 |
| US-9 | Role-based views (framework) | Must | 5 |
| US-1 | Wait time trend | Must | 3 |
| US-2 | Peak hour heatmap | Must | 5 |
| **Total** | | | **16** |

**Increment delivered:** Working executive and store views with the wait-time
trend and heatmap, filterable by date.

---

## Sprint 2: Comparison & Drill-Down
**Sprint Goal:** Enable district managers to compare and investigate store
performance through ranking and drill-down.

| Story | Description | Priority | Points |
|-------|-------------|----------|--------|
| US-3 | Store ranking | Must | 5 |
| US-4 | Regional comparison | Must | 5 |
| US-7 | Drill-down navigation | Must | 5 |
| **Total** | | | **15** |

**Increment delivered:** District manager view with store rankings, regional
comparison, and full chain → region → district → store drill-down.

---

## Sprint 3: Insight, Alerts & Compliance
**Sprint Goal:** Add analytical insight, proactive alerting, and confirm compliance,
completing the production-ready dashboard.

| Story | Description | Priority | Points |
|-------|-------------|----------|--------|
| US-5 | Satisfaction correlation | Should | 5 |
| US-10 | Threshold alerts | Should | 5 |
| US-11 | HIPAA compliance verification | Must | 3 |
| US-8 | Category & insurance filter | Could | 3 |
| **Total** | | | **16** |

**Increment delivered:** Complete dashboard with satisfaction insights, proactive
alerts, segment filtering, and verified HIPAA compliance.

---

## Sprint Summary

| Sprint | Goal | Stories | Points |
|--------|------|---------|--------|
| Sprint 1 | Foundation & core views | 4 | 16 |
| Sprint 2 | Comparison & drill-down | 3 | 15 |
| Sprint 3 | Insight, alerts & compliance | 4 | 16 |
| **Total** | | **11** | **47** |

---

## Sequencing Rationale
- **Sprint 1 first:** The foundation (filters, role framework) and most-used views
  (trend, heatmap) deliver immediate value and de-risk the data pipeline early.
- **Sprint 2 next:** Builds on the foundation to add the comparison and drill-down
  capabilities district managers need.
- **Sprint 3 last:** Adds higher-order insight (satisfaction), proactive alerting,
  and the compliance sign-off that gates production release.