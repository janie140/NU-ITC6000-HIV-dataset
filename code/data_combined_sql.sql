SELECT 
a.REGION
,a.country_death AS Country
,a.year 
,a.HIV_deaths
,a.HIV_cases
,a.HIV_women_percent
,b.population as population_in_millions
,b.GDP
,b.unemployment_rate

FROM HIV_data_combined a

INNER JOIN 
country_attributes b
ON (a.Country_death = b.Country_population and a.year = b.year)