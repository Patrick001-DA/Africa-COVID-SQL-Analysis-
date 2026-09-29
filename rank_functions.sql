-- Rank African countries by total COVID cases from highest to lowest.
select *,
     rank() over (order by total_cases desc)as africa_covid_rank
 from africa_covid;
 
