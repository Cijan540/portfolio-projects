
# PowerPulse Data Dictionary
## US Energy Transition Analysis 2001-2022

---

## Source Data
- **organised_Gen.csv** — EIA (US Energy Information Administration) electricity generation data
- **states.csv** — US states reference data
- **Carbon Intensity Values** — IPCC (Intergovernmental Panel on Climate Change) standard values

---

## Table 1: generation
The main fact table. Contains monthly electricity generation by state and energy source.

| Column | Data Type | Description | Example |
|---|---|---|---|
| id | SERIAL | Unique row identifier | 1, 2, 3 |
| year | SMALLINT | Year of generation | 2001, 2022 |
| month | SMALLINT | Month of generation | 1, 12 |
| state_code | CHAR(2) | US state abbreviation | TX, CA, NY |
| energy_source | VARCHAR(50) | Source of electricity | Coal, Wind, Solar |
| generation_mwh | NUMERIC(15,2) | Electricity generated in Megawatt hours | 46903.00 |

**Notes:**
- Filtered to Total Electric Power Industry only
- US-TOTAL rows removed — national rollup not a real state
- Negative values clipped to 0 — caused by Pumped Storage
- 2022 data is incomplete — only 5 months recorded

---

## Table 2: states
Reference table for US states with region classification.

| Column | Data Type | Description | Example |
|---|---|---|---|
| state_code | CHAR(2) | Primary key — US state abbreviation | TX, CA |
| state_name | VARCHAR(50) | Full state name | Texas, California |
| abbreviation | VARCHAR(10) | Traditional abbreviation | Tex., Calif. |
| region | VARCHAR(20) | US Census region | South, West, Midwest, Northeast |

**Regions:**
- **Northeast** — CT, ME, MA, NH, RI, VT, NJ, NY, PA
- **Midwest** — IN, IL, MI, OH, WI, IA, KS, MN, MO, NE, ND, SD
- **South** — DE, FL, GA, MD, NC, SC, VA, DC, WV, AL, KY, MS, TN, AR, LA, OK, TX
- **West** — AZ, CO, ID, MT, NV, NM, UT, WY, AK, CA, HI, OR, WA

---

## Table 3: fuel_types
Lookup table for energy source classification and carbon intensity.

| Column | Data Type | Description | Example |
|---|---|---|---|
| energy_source | VARCHAR(50) | Primary key — energy source name | Coal, Wind |
| category | VARCHAR(20) | Fuel category | Fossil, Renewable, Low-Carbon |
| is_renewable | SMALLINT | 1 = Renewable, 0 = Not renewable | 1, 0 |
| carbon_intensity_gco2_per_kwh | NUMERIC(6,1) | Grams of CO2 per kWh — IPCC values | 820.0, 0.0 |

**Carbon Intensity Source: IPCC 2014 — Lifecycle Emissions**

| Energy Source | Category | Is Renewable | gCO2/kWh |
|---|---|---|---|
| Coal | Fossil | No | 820.0 |
| Petroleum | Fossil | No | 650.0 |
| Natural Gas | Fossil | No | 490.0 |
| Nuclear | Low-Carbon | No | 12.0 |
| Hydroelectric | Renewable | Yes | 4.0 |
| Wind | Renewable | Yes | 0.0 |
| Solar | Renewable | Yes | 0.0 |
| Geothermal | Renewable | Yes | 0.0 |
| Wood and Biomass | Renewable | Yes | 50.0 |

---

## Data Quality Notes
1. 2022 data is incomplete — only January to May recorded
2. 11,195 negative generation values clipped to 0
3. Pumped Storage removed — consumes electricity, does not generate
4. US-TOTAL state removed — national rollup would cause double counting
5. All trend analysis uses 2001 to 2021 only
