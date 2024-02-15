#### Preamble ####
# Purpose: The test codes aim to verify the functionality and characteristics of the birth rate dataset created earlier. 
# They serve to validate the data, assess its distribution, and explore potential relationships between variables.
# Author: Chay Park
# Date: 4 February 2024
# Contact: chay.park@mail.utoronto.ca
# License: MIT
# Pre-requisites: The test codes assume that the birth rate dataset (named birth_data) is available in the R environment and 
# contains the necessary variables (year and births). Additionally, the R environment with required packages 
# (e.g., ggplot2, dplyr, tidyr, usmap) should be set up and loaded for executing the test codes successfully.


#### Workspace setup ####
# install.packages("ggplot2")
library(ggplot2)

# install.packages("dplyr")
library(dplyr)

# install.packages("tidyr")
library(tidyr)

# install.packages("usmap")
library(usmap)

#### Test data ####
# 1. Test code to check the summary statistics of the birth rate data:
summary(birth_data)

# 2. Test code to visualize the distribution of birth rates over the years:
hist(birth_data$births, main = "Distribution of Birth Rates", xlab = "Births per 1000 women age 15-44", ylab = "Frequency")

# 3. Test code to calculate the correlation between birth rates and year:
cor(birth_data$year, birth_data$births)

