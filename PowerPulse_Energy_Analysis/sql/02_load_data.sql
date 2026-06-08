
-- =====================================================
-- PowerPulse: US Energy Transition Analysis
-- 02_load_data.sql
-- =====================================================

-- Clear tables first to avoid duplicates
TRUNCATE TABLE generation, fuel_types, states CASCADE;

-- Load states first
COPY states(state_name, abbreviation, state_code, region)
FROM 'S:/Projects for my portfolio/PowerPulse_Energy_Analysis/data/processed/states_clean.csv'
CSV HEADER;

-- Load fuel_types second
COPY fuel_types(energy_source, category, is_renewable, carbon_intensity_gco2_per_kwh)
FROM 'S:/Projects for my portfolio/PowerPulse_Energy_Analysis/data/processed/fuel_types.csv'
CSV HEADER;

-- Load generation last
COPY generation(year, month, state_code, energy_source, generation_mwh)
FROM 'S:/Projects for my portfolio/PowerPulse_Energy_Analysis/data/processed/generation_clean.csv'
CSV HEADER;
