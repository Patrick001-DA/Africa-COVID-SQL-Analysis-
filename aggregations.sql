
-- Total recovered cases across Africa
SELECT SUM(total_recovered) AS total_recovered
FROM africa_covid;

-- Total active cases across Africa
SELECT SUM(active_cases) AS total_active
FROM africa_covid;

-- Average deaths per country
SELECT AVG(total_deaths) AS avg_deaths_per_country
FROM africa_covid;

-- Average tests conducted per country
SELECT AVG(total_tests) AS avg_tests_per_country
FROM africa_covid;
