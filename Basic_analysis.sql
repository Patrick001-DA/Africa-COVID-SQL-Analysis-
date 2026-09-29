Describe africa_covid;
select*
from africa_covid;

--  Case fatality rate Calculate: Total Deaths /Total Cases × 100 Display:country,total_cases,total_deaths case_fatality_rate


select country,total_cases,total_deaths,total_deaths/total_cases*100 as case_fatality_rate
from africa_covid;

-- Recovery rate Calculate:Total Recovered / Total Cases × 100 Display:country,total_cases,total_recovered,recovery_rate


select country,total_cases,total_recovered, total_recovered/total_cases*100 as recovery_rate
from africa_covid;
