select 
a.Country_population
,a.year
,a.population
,b.GDP
,c.unemployment/100 AS unemployment_rate
,CASE WHEN country_population IN ('Afghanistan'
,'Bahrain'
,'Djibouti'
,'Egypt'
,'Iran'
,'Iraq'
,'Jordan'
,'Kuwait'
,'Lebanon'
,'Libya'
,'Morocco'
,'Oman'
,'Pakistan'
,'Palestine'
,'Qatar'
,'Saudi Arabia'
,'Somalia'
,'Sudan'
,'Syrian Arab Republic'
,'Tunisia'
,'United Arab Emirates'
,'Yemen'
) THEN "Eastern Mediterranean"
ELSE "OTHER"
END AS REGION

FROM population a

INNER JOIN 
GDP b 
ON (a.Country_population = b.Country_GDP and a.year = b.year)

INNER JOIN 
unemployment c
on (a.Country_population = c.Country_unemployment and a.year = c.year)
WHERE Country_population IN ('Afghanistan'
,'Bahrain'
,'Djibouti'
,'Egypt'
,'Iran'
,'Iraq'
,'Jordan'
,'Kuwait'
,'Lebanon'
,'Libya'
,'Morocco'
,'Oman'
,'Pakistan'
,'Palestine'
,'Qatar'
,'Saudi Arabia'
,'Somalia'
,'Sudan'
,'Syrian Arab Republic'
,'Tunisia'
,'United Arab Emirates'
,'Yemen'
)