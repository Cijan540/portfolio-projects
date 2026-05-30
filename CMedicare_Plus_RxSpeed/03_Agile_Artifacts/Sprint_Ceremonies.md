# Sprint Ceremonies Log
## Project RxSpeed - Prescription Fulfillment Optimization
### CMedicare Plus Company

**Document Version:** 1.0
**Date:** May 26, 2026
**Prepared by:** Cizen Bhatta, Lead Business Analyst / Scrum facilitator

> Fictional portfolio project. All details are synthetic.

---

## Purpose
This document records the Scrum ceremonies conducted during Sprint 1, providing a
representative sample of how the team planned, synced, demonstrated, and improved
across the project.

---

## 1. Sprint 1 Planning

**Date:** Sprint 1, Day 1
**Attendees:** Product Owner (BA), Dev Lead, 2 Developers, QA Analyst

**Sprint Goal:** Deliver the core data foundation and primary executive/store views
so stakeholders can see wait-time performance.

**Committed Stories:** US-6, US-9, US-1, US-2 (16 story points)

**Key Decisions:**
- US-9 (role-based views) scoped to the framework only this sprint; individual
  views completed in later sprints
- Data pipeline validation prioritized early to de-risk later sprints

---

## 2. Daily Standup Samples

Standups follow the three-question format: What did I do? What will I do? Any blockers?

### Day 3
- **Dev 1:** Completed date-range filter (US-6); starting trend chart (US-1). No blockers.
- **Dev 2:** Built role-view framework (US-9); awaiting data dictionary confirmation. **Blocker:** needs final field names.
- **QA:** Preparing test cases for US-6 and US-1. No blockers.
- **Action:** BA to confirm data dictionary fields with IT by end of day.

### Day 6
- **Dev 1:** Trend chart (US-1) complete and in review. Starting heatmap (US-2).
- **Dev 2:** Role framework done; supporting Dev 1 on heatmap. No blockers.
- **QA:** US-6 passed testing; testing US-1. No blockers.

### Day 9
- **Dev 1:** Heatmap (US-2) nearing completion; minor color-scale tuning left.
- **Dev 2:** Assisting with heatmap performance optimization. No blockers.
- **QA:** US-1 passed; preparing US-2 test cases. No blockers.

---

## 3. Sprint 1 Review

**Date:** Sprint 1, Day 10
**Attendees:** Team + Sponsor (Ishan Rai), Store Operations (Saroj Bhatta)

**Demonstrated:**
- Date-range filter working across views (US-6)
- Role-based view framework (US-9)
- Wait-time trend chart with 15-min target line (US-1)
- Day-by-hour heatmap (US-2)

**Stakeholder Feedback:**
- Sponsor pleased with the trend chart; requested the target line be more prominent
- Store Operations suggested the heatmap default to the current week
- Both items logged to the backlog for refinement

**Outcome:** All 4 committed stories accepted. Sprint goal met.

---

## 4. Sprint 1 Retrospective

**Date:** Sprint 1, Day 10
**Attendees:** Scrum team only

### What Went Well
- Strong velocity; all committed stories completed
- Early data pipeline validation prevented downstream issues
- Good collaboration on the heatmap performance challenge

### What Could Improve
- Data dictionary ambiguity caused a one-day blocker mid-sprint
- Test case preparation started slightly late

### Action Items
- BA to finalize the full data dictionary before Sprint 2 planning
- QA to draft test cases during planning, not mid-sprint
- Add a "definition of ready" check so stories are fully specified before commitment

---

## Definition of Done (Applied to All Stories)
A story is "Done" when:
- Functionality matches the acceptance criteria
- Passed QA testing
- Reviewed and accepted by the Product Owner
- No known defects of medium or higher severity
- Complies with HIPAA (no PHI exposure)