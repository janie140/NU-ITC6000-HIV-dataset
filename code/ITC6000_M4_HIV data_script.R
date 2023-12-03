cat("\014")  # clears console
rm(list = ls())  # clears global environment
try(dev.off(dev.list()["RStudioGD"]), silent = TRUE) # clears plots
try(p_unload(p_loaded(), character.only = TRUE), silent = TRUE) # clears packages
options(scipen = 100) # disables scientific notion for entire R session

library(pacman)
p_load(tidyverse)
p_load(ggplot2)

#more clean and KPIs

HIV_df <- read_csv("HIV_data_final.csv")

HIV_df <- HIV_df |> mutate_all(function(x) gsub("<", "",x)) |>
  mutate_all(function(x) gsub("Nodata", NA, x)) |>
  mutate_all(function(x) gsub(" ", "",x))

HIV_df <- na.omit(HIV_df) #na removed

HIV_df <- HIV_df |> mutate_at(c(4,5,6,7,8,9),function(x) as.numeric(x)) |> 
  mutate(HIV_women_number = HIV_women_percent * HIV_cases,
         HIV_deaths_rate = HIV_deaths/ HIV_cases,
         HIV_cases_rate = HIV_cases/ (population_in_thousands * 1000))

HIV_mean_df <- HIV_df |> group_by(Country) |>
  summarise(mean_death_rate = mean(HIV_deaths_rate),
                          mean_cases_rate = mean(HIV_cases_rate),
                          mean_unemployment_rate = mean(unemployment_rate),
                          mean_women_rate = mean(HIV_women_percent),
                          mean_GDP = mean(GDP))

#graphs
#case rate
HIV_mean_df |> ggplot(aes(x = Country, y = mean_cases_rate*100)) +
  geom_col(fill = "cyan") +
  labs(y = "Average Percent (%)", x = "Country") +
  ggtitle("Average Percent (%) of HIV cases per country in Eastern Mediterranean") +
  ylim(c(0,1.2))

#death rate
HIV_mean_df |> ggplot(aes(x = Country, y= mean_death_rate*100)) +
  geom_point(color = "red", size = 2) +
  geom_line(group = 1) +
  labs(y = "Average Percent (%)", x = "Country") +
    ylim(c(0,100)) +
  ggtitle("Average Percent (%) of deaths due to HIV per country in Eastern Mediterranean")

#women rate
HIV_mean_df |> ggplot(aes(x = Country, y= mean_women_rate*100)) +
  geom_point(color = "blue", size = 2) +
  geom_line(group = 1) +
  labs(y = "Average Percent (%)", x = "Country") +
  ylim(c(0,100)) +
  ggtitle("Average Percent (%) of women living with HIV per country in Eastern Mediterranean")

#relation between unemployment rate and HIV cases rate
HIV_mean_df |> ggplot(aes(x = mean_unemployment_rate))+
 geom_point(aes(y = mean_cases_rate*100)) +
  geom_smooth(aes(y = mean_cases_rate*100), method = "lm", se = FALSE)+
  labs(y = "Average percent of HIV cases (%)") +
  ggtitle("Relation between country unemployment rate and HIV cases rate")

#relation between GDP and HIV cases rate
HIV_mean_df |> ggplot(aes(x = mean_GDP))+
  geom_point(aes(y = mean_cases_rate*100)) +
  geom_smooth(aes(y = mean_cases_rate*100), method = "lm", se = FALSE) +
  labs(y = "Average percent of HIV cases (%)") +
  ggtitle("Relation between country GDP and HIV cases rate")







