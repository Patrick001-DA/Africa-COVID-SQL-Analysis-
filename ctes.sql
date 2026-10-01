
--  Using a CTE, calculate case fatality rate and identify countries above 2%.

 with fatality_rate as (select *,
total_deaths/total_cases*100 as case_fatality_rate
from africa_covid)
select*
from fatality_rate
where case_fatality_rate>2;




-- Using a CTE, calculate recovery rate and identify countries above 95%.

with recovery_rte as  (select*,total_recovered/total_cases*100 as recovery_rate
from africa_covid)
select*
from recovery_rte
where recovery_rate>95;



-- Using a CTE, calculate active case percentage and identify countries above the average.

with active_case_percent as (select*,active_cases / total_cases*100 as active_cases_percentage
from africa_covid)
select *
from active_case_percent
where active_cases_percentage>(select avg(active_cases_percentage)
 from africa_covid)
 order by active_cases_percentage;




-- Create a CTE containing country, cases, deaths, recovered, active cases, fatality rate and recovery rate, then identify unusual statistics.


WITH covid_analysis AS (
    SELECT
        country,
        total_cases AS cases,
        total_deaths AS deaths,
        total_recovered AS recovered,
        active_cases,

        (total_deaths * 100.0 / total_cases) AS fatality_rate,
        (total_recovered * 100.0 / total_cases) AS recovery_rate

    FROM africa_covid
)

SELECT
    country,
    cases,
    deaths,
    recovered,
    active_cases,
    fatality_rate,
    recovery_rate,

    CASE
        WHEN fatality_rate > (SELECT AVG(fatality_rate) FROM covid_analysis)
             AND recovery_rate < (SELECT AVG(recovery_rate) FROM covid_analysis)
            THEN 'High fatality & low recovery'

        WHEN fatality_rate > (SELECT AVG(fatality_rate) FROM covid_analysis)
            THEN 'High fatality rate'

        WHEN recovery_rate < (SELECT AVG(recovery_rate) FROM covid_analysis)
            THEN 'Low recovery rate'
    END AS unusual_pattern

FROM covid_analysis
WHERE fatality_rate > (SELECT AVG(fatality_rate) FROM covid_analysis)
   OR recovery_rate < (SELECT AVG(recovery_rate) FROM covid_analysis)
ORDER BY fatality_rate DESC;

