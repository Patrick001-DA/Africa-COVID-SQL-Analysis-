--  Case fatality rate Calculate: Total Deaths /Total Cases × 100 Display:country,total_cases,total_deaths case_fatality_rate


select country,total_cases,total_deaths,total_deaths/total_cases*100 as case_fatality_rate
from africa_covid;

-- Recovery rate Calculate:Total Recovered / Total Cases × 100 Display:country,total_cases,total_recovered,recovery_rate


select country,total_cases,total_recovered, total_recovered/total_cases*100 as recovery_rate
from africa_covid;
- Active case percentage Calculate: Active Cases / Total Cases × 100

select*,active_cases/total_cases*100 as active_case_percentage
from africa_covid;

--  Tests per case Calculate:Total Tests / Total Cases

select*, total_tests/total_cases as tests_per_case
from africa_covid;

-- Unresolved cases Calculate:Total Cases - Total Recovered - Total Deaths Compare the result with active_cases.

select*,total_cases-total_recovered-total_deaths as unresolved_cases
from africa_covid;
- Find the total COVID cases across all countries.
select sum(total_cases)
from africa_covid;
