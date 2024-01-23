#### Preamble ####
# Purpose: T
# Author: Owais Zahid
# Date: 22 January 2024
# Contact: owais.zahid@mail.utoronto.ca
# License: MIT
# Pre-requisites: run 01-download_data.R, 02-data_cleaning.R
# prior to opening this file.



#### Workspace setup ####
library(tidyverse)

# grab data from csv
cleaned_data = read.csv("inputs/data/raw_data.csv")

#### Test data ####
# testing month range 
min(cleaned_data$Date.Outbreak.Began) > as.Date("2022/12/31")
max(cleaned_data$Date.Outbreak.Began) <= as.Date("2023/12/31")