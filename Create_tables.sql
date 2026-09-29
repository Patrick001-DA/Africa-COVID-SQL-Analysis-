CREATE TABLE africa_covid (
    country VARCHAR(100) PRIMARY KEY,
    total_cases INT,
    total_deaths INT,
    total_recovered DECIMAL(15,1),
    active_cases DECIMAL(15,1),
    cases_per_1m INT,
    deaths_per_1m INT,
    total_tests DECIMAL(15,1),
    tests_per_1m DECIMAL(15,1),
    population BIGINT
);

