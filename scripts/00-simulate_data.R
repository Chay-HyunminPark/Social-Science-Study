#### Preamble ####
# Purpose: The purpose of this script is to simulate and visualize the trend in birth rates in the United States from the year 1980 
# to 2020. The script generates tables and graphs to illustrate the overall trend in US birth rates, as well as the birth rates among 
# various subgroups such as different age groups and race and ethnicities. 
# Author: Chay Park
# Date: 15 February 2024 
# Contact: chay.park@mail.utoronto.ca
# License: MIT
# Pre-requisites: R Programming Environment, R Packages, Simulated Birth Rate Data, Simulated Subgroup Data, State-level birth rate change data

#### Workspace setup ####

# Load necessary packages
if (!requireNamespace("dplyr", quietly = TRUE)) {
  install.packages("dplyr")
}
library(dplyr)

# Set seed for reproducibility
set.seed(123)

#### Dataset Simulation ####

# Simulate creating the first dataset
years <- 2000:2022
brate_all <- runif(length(years), min = 5, max = 20)

data_first <- data.frame(
  year = years,
  brate_all = brate_all
)

# Simulate creating the second dataset
brate_1519 <- runif(length(years), min = 2, max = 10)
brate_3034 <- runif(length(years), min = 5, max = 15)
brate_whitenh <- runif(length(years), min = 3, max = 12)

data_second <- data.frame(
  year = years,
  brate_1519 = brate_1519,
  brate_3034 = brate_3034,
  brate_whitenh = brate_whitenh
)

#### Test codes ####

# Test 1: Total Count of Birth Rates

# Hypothesis: The total count of birth rates for each dataset is greater than 0.

test_1 <- all(data_first$brate_all > 0) & all(data_second$brate_1519 > 0) &
          all(data_second$brate_3034 > 0) & all(data_second$brate_whitenh > 0)
print("Test 1 (Total Count of Birth Rates > 0):", test_1)

# Test 2: Check for Missing Values

# Hypothesis: There are no missing values in either dataset.

test_2 <- all(!is.na(data_first)) & all(!is.na(data_second))
print("Test 2 (No Missing Values):", test_2)

# Test 3: No Missing Combinations

# Hypothesis: There are no missing combinations in the datasets, 
# and the birth rate count for every combination is either present or set to 0.

test_3 <- all(data_second$brate_1519 >= 0) & all(data_second$brate_3034 >= 0) &
          all(data_second$brate_whitenh >= 0)
print("Test 3 (No Missing Combinations):", test_3)
