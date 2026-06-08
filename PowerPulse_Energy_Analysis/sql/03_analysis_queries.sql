q1_sql = """
-- Query 1: GROUP BY
-- Business Question: Which energy source generated the most electricity?
SELECT 
    energy_source,
    ROUND(SUM(generation_mwh)/1000000, 2) AS total_twh
FROM generation
GROUP BY energy_source
ORDER BY total_twh DESC;
"""
print(q1_sql)
