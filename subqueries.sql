
-- Which countries have above-average total cases?

select country,total_cases
from africa_covid
where total_cases>(select avg(total_cases)as avg_total_cases from africa_covid);


--  Which countries have above-average deaths?

select country,total_deaths
from africa_covid
where total_deaths>(select avg(total_deaths) as avg_total_deaths from africa_covid);


--  Which countries have above-average cases per 1 million population?

select country,cases_per_1m
from africa_covid
where cases_per_1m>(select avg(cases_per_1m) from africa_covid);

