#### Preamble ####
# Purpose: The purpose of this script is to simulate and visualize the trend in birth rates in the United States from the year 1980 
# to 2020. The script generates tables and graphs to illustrate the overall trend in US birth rates, as well as the birth rates among 
# various subgroups such as different age groups, ethnicities, educational levels, and marital statuses. 
# Additionally, the script creates a state-level map to visualize the change in birth rates across different states over the specified period.
# Author: Chay Park
# Date: 3 February 2024 
# Contact: chay.park@mail.utoronto.ca
# License: MIT
# Pre-requisites: R Programming Environment, R Packages, Simulated Birth Rate Data, Simulated Subgroup Data, State-level birth rate change data

#### Workspace setup ####
# Load required libraries
library(ggplot2)
library(dplyr)
library(tidyr)

#### Simulate data ####
# Simulated birth rate data from 1980 to 2020
set.seed(123) # for reproducibility
birth_data <- data.frame(
  year = 1980:2020,
  births = rnorm(41, mean = 1000, sd = 100)
)

# Generate subgroup data
subgroup_data <- data.frame(
  year = rep(1980:2020, each = 6),
  subgroup = rep(c("brate_1519", "brate_2024", "brate_2529", "brate_hisp", "brate_college", "brate_married"), times = 41),
  births = rnorm(41*6, mean = 500, sd = 50)
)

# Generate state-level birth rate change data
state_data <- data.frame(
  state_name = state.name,
  brate_1544_thsnds_ch_pct = runif(length(state.name), min = -15, max = 15)
)

# First figure: Trend in US Birth Rates
ggplot(birth_data, aes(x = year, y = births)) +
  geom_line() +
  labs(x = "Year", y = "Births per 1000 women age 15-44", title = "Trend in US Birth Rates")

# First table: Year and Births
birth_data_table <- birth_data

# Second table: Year and Subgroup Births
subgroup_data_table <- spread(subgroup_data, key = subgroup, value = births)

# Second figure: Multiple line graphs for subgroups
ggplot(subgroup_data, aes(x = year, y = births, color = subgroup)) +
  geom_line() +
  labs(x = "Year", y = "Number of Births", title = "Trends in Birth Rates by Population Subgroup")

