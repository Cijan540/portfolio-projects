# Data Dictionary
## Project RxSpeed - Prescription Fulfillment Optimization
### CMedicare Plus Company

**Document Version:** 1.0
**Date:** May 26, 2026
**Prepared by:** Cizen Bhatta, Lead Business Analyst

> Fictional portfolio project. All data is synthetically generated.

---

## Purpose
This dictionary defines every field across the five datasets that power the
RxSpeed analytics dashboard. It serves as the authoritative reference for the
dashboard build.

---

## Dataset 1: stores.csv (Dimension)

| Field | Type | Definition | Example |
|-------|------|------------|---------|
| store_id | Text | Unique store identifier (primary key) | ST-0001 |
| store_name | Text | Display name of the store | CMedicare Plus #0001 |
| city | Text | City where the store is located | Columbus |
| state | Text | Two-letter state code | OH |
| region | Text | Regional grouping (Midwest / Southeast) | Midwest |
| district | Text | District identifier | D07 |
| open_date | Date | Date the store opened | 2015-06-12 |
| store_size_sqft | Integer | Store size in square feet | 10000 |
| drive_thru | Boolean | Whether the store has a drive-thru | TRUE |
| manager_name | Text | Store manager name | (synthetic) |
| base_performance_score | Decimal | Internal performance factor (0.3-1.0) | 0.687 |

---

## Dataset 2: staff.csv (Dimension)

| Field | Type | Definition | Example |
|-------|------|------------|---------|
| staff_id | Text | Unique staff identifier (primary key) | EMP-00001 |
| staff_name | Text | Staff member name | (synthetic) |
| role | Text | Pharmacist or Pharmacy Technician | Pharmacist |
| store_id | Text | Store the staff member works at (foreign key) | ST-0001 |
| hire_date | Date | Date hired | 2019-03-14 |
| hours_per_week | Integer | Scheduled weekly hours | 40 |
| certification_level | Text | Junior / Mid / Senior | Mid |

---

## Dataset 3: prescriptions.csv (Fact - transactional)

| Field | Type | Definition | Example |
|-------|------|------------|---------|
| prescription_id | Text | Unique prescription identifier (primary key) | RX-00000001 |
| store_id | Text | Store where filled (foreign key) | ST-0143 |
| date | Date | Date the prescription was received | 2023-01-01 |
| received_time | DateTime | Timestamp prescription was received | 2023-01-01 08:06:00 |
| filled_time | DateTime | Timestamp prescription was filled | 2023-01-01 08:16:24 |
| wait_minutes | Decimal | Total wait time in minutes (received → filled) | 10.4 |
| drug_category | Text | Generic / Brand / Specialty / Controlled | Generic |
| insurance_type | Text | Commercial / Medicare / Medicaid / Cash | Commercial |
| pharmacist_id | Text | Verifying pharmacist (foreign key) | EMP-01104 |
| technician_id | Text | Filling technician (foreign key) | EMP-01106 |
| hour_of_day | Integer | Hour the prescription was received (8-20) | 8 |
| status | Text | Picked Up / Pending | Picked Up |

---

## Dataset 4: customer_satisfaction.csv (Fact - linked)

| Field | Type | Definition | Example |
|-------|------|------------|---------|
| response_id | Text | Unique survey response identifier (primary key) | SR-000001 |
| prescription_id | Text | Related prescription (foreign key) | RX-00000001 |
| store_id | Text | Store (foreign key) | ST-0143 |
| date | Date | Date of the response | 2023-01-01 |
| satisfaction_score | Integer | Score from 1 (worst) to 10 (best) | 9 |
| nps_category | Text | Promoter / Passive / Detractor | Promoter |
| would_recommend | Boolean | Whether customer would recommend | TRUE |
| complaint_category | Text | Complaint type, or blank if satisfied | Wait Time Too Long |

---

## Dataset 5: daily_store_metrics.csv (Aggregate - derived)

| Field | Type | Definition | Example |
|-------|------|------------|---------|
| store_id | Text | Store identifier (foreign key) | ST-0001 |
| date | Date | Aggregation date | 2023-01-01 |
| total_prescriptions | Integer | Prescriptions filled that day | 87 |
| avg_wait_minutes | Decimal | Average wait time that day | 14.2 |
| max_wait_minutes | Decimal | Longest wait that day | 41.0 |
| pending_count | Integer | Prescriptions left pending | 2 |
| avg_satisfaction | Decimal | Average satisfaction (blank if no surveys) | 7.5 |
| survey_count | Integer | Number of surveys received | 9 |
| complaint_count | Integer | Number of complaints | 2 |
| total_staff | Integer | Staff assigned to the store | 10 |
| region | Text | Regional grouping | Midwest |
| district | Text | District identifier | D07 |
| state | Text | State code | OH |

---

## Notes
- All names and identifiers are synthetic; no real PHI exists in any dataset
- Dates span January 2023 to December 2024 (24 months)
- The aggregate table (Dataset 5) is the primary source for dashboard performance