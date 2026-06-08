
-- =====================================================
-- PowerPulse: US Energy Transition Analysis
-- 01_create_tables.sql
-- Creates 3 tables: states, fuel_types, generation
-- =====================================================

CREATE TABLE IF NOT EXISTS states (
    state_code    CHAR(2)      PRIMARY KEY,
    state_name    VARCHAR(50)  NOT NULL,
    abbreviation  VARCHAR(10),
    region        VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS fuel_types (
    energy_source                 VARCHAR(50)  PRIMARY KEY,
    category                      VARCHAR(20),
    is_renewable                  SMALLINT,
    carbon_intensity_gco2_per_kwh NUMERIC(6,1)
);

CREATE TABLE IF NOT EXISTS generation (
    id             SERIAL        PRIMARY KEY,
    year           SMALLINT      NOT NULL,
    month          SMALLINT      NOT NULL,
    state_code     CHAR(2)       REFERENCES states(state_code),
    energy_source  VARCHAR(50)   REFERENCES fuel_types(energy_source),
    generation_mwh NUMERIC(15,2)
);
