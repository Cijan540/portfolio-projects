# Dashboard Wireframes
## Project RxSpeed - Prescription Fulfillment Optimization
### CMedicare Plus Company

**Date:** May 26, 2026
**Prepared by:** Cizen Bhatta, Lead Business Analyst

> Fictional portfolio project. Wireframes are low-fidelity layout blueprints.

---

## Purpose
These wireframes define the layout and information hierarchy for each dashboard
view before development, allowing stakeholder validation early in the design process.

---

## View 1: Executive Overview

**Audience:** Executives (Ishan Rai, Dr. Harshada Bisht)
**Layout (top to bottom):**
1. Header with date-range and region filters
2. KPI card row: Avg wait time, % within target, Avg satisfaction, Revenue at risk
3. Wait-time monthly trend chart (with 15-min target line) + region comparison bars
4. Worst 10 stores ranked bar chart

**Maps to user stories:** US-1, US-4, US-3, US-6

---

## View 2: District Manager View

**Audience:** District Managers
**Layout:**
1. Header with district selector + date filter
2. Store ranking within the selected district
3. Store comparison table (wait time, volume, satisfaction per store)
4. Drill-down: click a store to open the Store Manager view

**Maps to user stories:** US-3, US-4, US-7

---

## View 3: Store Manager View

**Audience:** Store Managers
**Layout:**
1. Header with store name + date filter
2. Store KPI cards: today's avg wait, prescriptions filled, pending count
3. Peak-hour heatmap (day x hour) for the store
4. Threshold alert banner if store exceeds the 15-min target

**Maps to user stories:** US-2, US-9, US-10

---

## View 4: Insight & Satisfaction (Executive)

**Audience:** Executives / Analysts
**Layout:**
1. Wait-time vs satisfaction bar chart (by wait-time band)
2. Complaint category breakdown
3. Filters: drug category, insurance type

**Maps to user stories:** US-5, US-8

---

## Design Principles Applied
- Most important KPIs placed top-left (natural reading start point)
- Filters consistently positioned in the header
- Consistent color coding: red = over target, green = within target
- No PHI displayed anywhere (HIPAA compliance)