Select 
a.Country_death
,a.year
,a.HIV_deaths
,c.HIV_cases
,b.HIV_women/100 AS HIV_women_percent
,CASE WHEN country_death IN ('Afghanistan'
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
 from deaths_per_country_clean a

INNER JOIN women_per_country_clean b
ON (a.Country_death = b.Country_women and a.year = b.year)

INNER JOIN num_per_country_clean c
ON (a.Country_death = c.Country_num and a.year = c.year)

WHERE Country_death IN ('Afghanistan'
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