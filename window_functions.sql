
-- For every country, display its total cases and the country with the highest total cases.
SELECT
    country,
    total_cases,
    FIRST_VALUE(country) OVER (
        ORDER BY total_cases DESC
    ) AS highest_case_country
FROM africa_covid;






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



-- Assign a unique sequential number to countries ordered by total_cases descending (no ties allowed, even if two countries have equal cases).


select country,total_cases,
     row_number() over(order by total_cases desc) 
as row_num
from africa_covid;


-- Split all countries into 4 buckets (quartiles) based on total_cases, from highest to lowest.

select country, NTILE(4) OVER (order by total_cases desc) as case_quartile
from africa_covid;
     

-- Split all countries into 5 buckets based on cases_per_1m to group them into severity bands.

select country,
            NTILE(5) over (order by cases_per_1m) as severity_brands
 from africa_covid;


-- For countries ordered by total_cases descending, show each country's total_cases alongside the total_cases of the country ranked just above it.
select country,
  lag(total_cases) over (order by total_cases desc)
 from africa_covid;

-- Ordered by total_deaths descending, find the difference between each country's total_deaths and the previous country's total_deaths.


with previous_country_total as (select country,total_deaths,
    lag(total_deaths) over (order by total_deaths  desc) as previous_country_total_deaths  
                                       from africa_covid)

select country,total_deaths-previous_country_total_deaths as total_diff
from previous_country_total
