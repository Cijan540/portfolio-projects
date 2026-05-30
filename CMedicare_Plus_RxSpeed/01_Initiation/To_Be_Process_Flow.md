# To-Be Process Flow
## Prescription Fulfillment - Future State
### Project RxSpeed - CMedicare Plus Company

**Date:** May 26, 2026
**Prepared by:** Cizen Bhatta, Lead Business Analyst

> Fictional portfolio project. All details are synthetic.

---

## Purpose
This document describes the improved ("to-be") prescription fulfillment process
after implementation of the RxSpeed analytics solution. The clinical workflow
itself remains largely unchanged (it is governed by regulation); the improvement
comes from layering real-time visibility and predictive alerts on top of the
existing process.

---

## What Changes vs the As-Is

The 9 fulfillment steps stay the same. What changes is the **management layer**
wrapped around them:

| Improvement | How It Helps |
|-------------|--------------|
| Real-time queue dashboard | Managers see prescription backlog as it builds, not after complaints |
| Peak-hour staffing alerts | System flags when demand will exceed staff capacity |
| Wait-time threshold warnings | Alert triggers when a store trends toward exceeding the 15-min target |
| Store & regional drill-down | District managers spot underperforming stores instantly |
| Bottleneck visibility | Hypothesized bottlenecks (insurance, verification, pickup) become monitorable once step-level data is added |

---

## To-Be Process (With Management Layer)

| Step | Activity | New Capability Added |
|------|----------|----------------------|
| 1 | Prescription received | Logged to real-time queue dashboard |
| 2 | Insurance verification | Rejection rates tracked and surfaced |
| 3 | Drug Utilization Review | (unchanged) |
| 4 | Inventory check | (unchanged) |
| 5 | Filling | Live count of in-progress prescriptions visible |
| 6 | Pharmacist verification | Queue length monitored; staffing alert if backlog grows |
| 7 | Patient counseling | (unchanged) |
| 8 | Pickup & payment | Peak-hour congestion flagged in advance |
| 9 | Prescription complete | Wait time recorded and fed into KPI dashboard |

---

## The Core Shift: Reactive to Proactive

**As-Is (today):** Managers learn about problems *after* customers complain.

**To-Be (future):** Managers see problems forming in real time and act *before*
customers are affected, reallocating staff to peak windows, addressing
trending stores, and keeping wait times within target.

---

## Expected Outcomes (Tied to KPIs)
- Average wait time reduced from 30.6 to 15 minutes
- 80% of prescriptions filled within target
- Midwest-Southeast gap reduced to under 2 minutes
- Early-warning alerts prevent wait-time spikes before they occur