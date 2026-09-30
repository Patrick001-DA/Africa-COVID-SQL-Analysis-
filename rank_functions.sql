-- Rank African countries by total COVID cases from highest to lowest.
select *,
     rank() over (order by total_cases desc)as africa_covid_rank
 from africa_covid;


 -- Rank countries by deaths per 1 million population
 select*,
     rank() over (order by cases_per_1m desc)as case_rate_rank
  from africa_covid;


-- Rank countries by case fatality rate
with case_fatality_rate as (select country,totaL_cases,total_deaths,total_deaths/total_cases*100 as fatality_rate
                       from africa_covid)
select 
country,
total_cases,
total_deaths,
 rank() over (order by fatality_rate desc) as fatality_rank

from case_fatality_rate ;


-- Find countries ranked in the top 5 for cases per million

select *, rank() over (order by cases_per_1m desc)
from africa_covid
limit 5;
-- Rank countries by total cases using DENSE_RANK()

select*,
DENSE_RANK() over (order by total_cases desc)
from africa_covid;
