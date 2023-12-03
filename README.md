# NU-ITC6000-HIV-dataset
HIV in Eastern Mediterranean Region 

Data sources: WHO, UN data, ILO (International Labour Organization), The World Bank 

Analysis Method: SQL, Excel, R 

Introduction 

The following report outlines the analysis of HIV incident rates in the Eastern Mediterranean region from 2007 to 2016. In addition to the HIV incident rate, other important indicators were also analyzed, including the percent of pregnant women with known HIV status, and estimated number of people living with HIV.  
The data for this analysis was obtained from publicly available databases, including the World Health Organization (WHO), UN data, ILO (International Labour Organization), and The World Bank. The .csv files were processed using R Studio, DBrowser, and SQLite to join country-level and region-level information. This allowed us to estimate the number of people living with HIV by country population, and to examine trends and disparities in the data over a 10-year period.

Analysis 

Regional-Level Results: 
The Eastern Mediterranean region saw a steady increase of HIV-related deaths throughout the observed decade (2007-2016). Figure 1 (blue trend line) shows this trend, where the biggest jump in estimated deaths occurred between 2010 and 2012. While the number of deaths plateaued between 2015 and 2016, the number of people living with HIV continued to increase (figure 2 – green trend line). This finding indicates that interventions related to preventing HIV-related deaths may have improved, but new HIV cases did not slow.  
Despite some lack of obtainable data from certain countries through the decade that may impact the accuracy of these results, the available information observable trends show that HIV treatments have allowed HIV-positive individuals to live longer, but the spread of infection continues to be a problem that must be addressed. 
 
![image](https://github.com/janie140/NU-ITC6000-HIV-dataset/assets/121474131/8b95db23-fd2e-4a95-99f3-a33a70853e82)


Conclusions and Recommendations 

Overall, the results of our analysis indicate that the number of HIV-related deaths, the number of all people living with HIV, and the number of adult women (15 and older) all increased between 2007 and 
2016. Djibouti is the country that has the particularly highest HIV average case rate in the Eastern Mediterranean region throughout the decade. In contrast, Qatar has the lowest rate of people living with HIV but has the highest death rate per cases due to HIV. Morocco and Somalia reach the highest percentage of women living with HIV, while Pakistan has the lowest rate. Along with that, more than half of the Eastern Mediterranean countries has the HIV women percentage above 25%. In general, there are weak relationships between wealth (GDP) or labor situation (unemployment rate) and HIV infections. We cannot conclude these correlations at this time by the datasets. 

Based on the findings of this report, it is recommended that future HIV interventions in this region focus on the following areas: 
1.	Accurate Data collection and reporting is vital to be able to understand the accuracy of the trends we are seeing in our visualizations. 
2.	Increasing access to HIV testing and counseling to improve the percent of pregnant women with known HIV status and ensure early detection and treatment of HIV. 
3.	Strengthening the health care system and improving access to antiretroviral therapy to reduce the number of people living with HIV and improve their quality of life. 
4.	Addressing the social and cultural factors that contribute to the spread of HIV, such as stigma and discrimination, and increasing public awareness and education about HIV prevention and treatment.

References 
1.	People (all ages) living with HIV Estimates by country [Dataset]. WHO. https://apps.who.int/gho/data/view.main.22100?lang=en 
2.	Number of people dying from HIV-related causes [Dataset]. WHO. 
https://www.who.int/data/gho/data/indicators/indicator-details/GHO/number-of-deaths-dueto-hiv-aids  
3.	Women's share of population ages 15+ living with HIV [Dataset]. The World Bank. 
https://data.worldbank.org/indicator/SH.DYN.AIDS.FE.ZS  
4.	Total population, both sexes combined (thousands) [Dataset]. UN Data. 
https://data.un.org/Data.aspx?q=Population&d=PopDiv&f=variableID%3a12  
5.	Per capita GDP at current prices - US dollars [Dataset]. UN Data. 
https://data.un.org/Data.aspx?q=GDP&d=SNAAMA&f=grID%3a101%3bcurrID%3aUSD%3bpcFla g%3a1  
6.	Unemployment Rate (ages 15+) [Dataset]. ILOSTAT. 
https://www.ilo.org/shinyapps/bulkexplorer54/?lang=en&segment=indicator&id=UNE_2EAP_SE X_AGE_RT_A  

