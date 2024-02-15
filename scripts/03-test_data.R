#### Preamble ####
# Purpose: In the provided code, I run tests on real datasets representing birth rates across different demographics over multiple years.
# Author: Chay Park
# Date: 15 February 2024
# Contact: chay.park@mail.utoronto.ca
# License: MIT
# Pre-requisites: The test codes assume that the birth rate dataset (named birth_data) is available in the R environment and 
# contains the necessary variables (year and births). Additionally, the R environment with required packages 
# (e.g., ggplot2, dplyr, tidyr) should be set up and loaded for executing the test codes successfully.


#### Preamble ####

#### Workspace setup ####

# Load necessary packages
if (!requireNamespace("dplyr", quietly = TRUE)) {
  install.packages("dplyr")
}
library(dplyr)

#### Load real datasets ####

# Read the data from CSV file
fig_1 <- read.csv(file = here::here("inputs/data/fig_1.csv"))

# Read the data from CSV file
figs_2a_2b <- read.csv(file = here::here("inputs/data/fig_1.csv"))

#### Test codes ####

# Test 1: Total Count of Birth Rates

# Hypothesis: The total count of birth rates for each dataset is greater than 0.

test_1_fig_1 <- all(fig_1$brate_all > 0)
test_1_fig_2 <- all(figs_2a_2b$brate_1519 > 0) & all(figs_2a_2b$brate_2024 > 0) &
  all(figs_2a_2b$brate_2529 > 0) & all(figs_2a_2b$brate_3034 > 0) &
  all(figs_2a_2b$brate_3539 > 0) & all(figs_2a_2b$brate_4044 > 0) &
  all(figs_2a_2b$brate_whitenh > 0) & all(figs_2a_2b$brate_blacknh > 0) &
  all(figs_2a_2b$brate_hisp > 0)

print("Test 1 (Total Count of Birth Rates > 0) for fig_1.csv:", test_1_fig_1)
print("Test 1 (Total Count of Birth Rates > 0) for figs_2a_2b.csv:", test_1_fig_2)

# Test 2: Check for Missing Values

# Hypothesis: There are no missing values in either dataset.

test_2_fig_1 <- all(!is.na(fig_1))
test_2_fig_2 <- all(!is.na(figs_2a_2b))

print("Test 2 (No Missing Values) for fig_1.csv:", test_2_fig_1)
print("Test 2 (No Missing Values) for figs_2a_2b.csv:", test_2_fig_2)

# Test 3: No Missing Combinations

# Hypothesis: There are no missing combinations in the datasets, 
# and the birth rate count for every combination is either present or set to 0.

test_3_fig_2 <- all(figs_2a_2b$brate_1519 >= 0) & all(figs_2a_2b$brate_2024 >= 0) &
  all(figs_2a_2b$brate_2529 >= 0) & all(figs_2a_2b$brate_3034 >= 0) &
  all(figs_2a_2b$brate_3539 >= 0) & all(figs_2a_2b$brate_4044 >= 0) &
  all(figs_2a_2b$brate