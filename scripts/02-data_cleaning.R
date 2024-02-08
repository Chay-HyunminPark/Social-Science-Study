#### Preamble ####
# Purpose: To sort out relevant necessary data from the data set 
# Author: Chay Park
# Date: 4 February 2024
# Contact: chay.park@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to download the replication package

#### Workspace setup ####
install.packages(c("knitr", "lubridate", "tidyverse"))

# See a list of available packages
library(knitr)
library(lubridate)
library(tidyverse)

packages <- list_packages(limit = 10)
packages

#### Clean data ####

# Write CSV file for figure 1
write_csv(
  x = trend_us_brate,
  file = "inputs/data/fig_1.csv"
)
head(trend_us_brate)

# Write CSV file for figure 2
write_csv(
  x = numbirth,
  file = "inputs/data/decomp/births_educ_race_age6.csv"
)

# Write CSV file for figure 3
write_csv(
  x = state_birth,
  file = "inputs/data/map/state_birth_04_19.csv"
)
