# Requirements Traceability Matrix (RTM)
## Project RxSpeed - Prescription Fulfillment Optimization
### CMedicare Plus Company

**Document Version:** 1.0
**Date:** May 26, 2026
**Prepared by:** Cizen Bhatta, Lead Business Analyst

> Fictional portfolio project. All details are synthetic.

---

## Purpose
This matrix traces each requirement from its originating baseline finding through
to the functional requirement and planned validation, ensuring complete coverage
with no gaps and no unjustified features.

---

## Traceability Chain

**Baseline Finding → Business Objective → Business Requirement → Functional Requirement → Validation**

---

## Full Traceability Matrix

| Baseline Finding | Bus. Objective | Bus. Req | Functional Req | Validation Method |
|------------------|----------------|----------|----------------|-------------------|
| Wait times rose 59% | BO-1 | BR-1 | FR-1, FR-6, FR-15 | UAT: verify trend chart & date filter |
| Midwest 30% slower | BO-5 | BR-2 | FR-3, FR-4, FR-7 | UAT: verify regional drill-down |
| Peak-hour spikes | BO-3 | BR-3 | FR-2 | UAT: verify heatmap accuracy |
| Satisfaction-wait link | BO-4 | BR-4 | FR-5 | UAT: verify correlation view |
| Worsening trajectory | BO-1 | BR-5 | FR-12, FR-13 | UAT: verify threshold alerts |
| Stakeholder needs differ | BO-2 | BR-6 | FR-9, FR-10, FR-11 | UAT: verify each role view |
| Regulatory requirement | All | BR-7 | FR-14, NFR-4 | Compliance review: no PHI exposed |

---

## Coverage Check

| Requirement Type | Count | Status |
|------------------|-------|--------|
| Baseline Findings | 7 | All addressed |
| Business Objectives | 5 | All mapped |
| Business Requirements | 7 | All traced to FRs |
| Functional Requirements | 15 | All traced to a BR |
| Non-Functional Requirements | 5 | All documented |

---

## Key Observations

- **No orphan requirements:** Every functional requirement traces back to a
  documented business need and baseline finding.
- **No gaps:** Every business requirement is satisfied by at least one functional
  requirement.
- **Full validation coverage:** Every requirement has a planned validation method
  (UAT or compliance review).

This traceability ensures the solution delivers exactly what the business needs,
provides a clear basis for UAT, and protects against scope creep throughout
delivery.