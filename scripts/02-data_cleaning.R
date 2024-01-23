#### Preamble ####
# Purpose: Cleans the outbreak data from toronto healthcare institutions in 
# 2023 dataset.
# Author: Owais Zahid
# Date: 22 January 2024
# Contact: owais.zahid@mail.utoronto.ca
# License: MIT
# Pre-requisites: Please run 01-download_data.R prior to opening this file.


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)

# obtaining raw data from inputs folder
raw_data = read.csv("inputs/data/raw_data.csv")

# obtain the col nmaes
column_list= colnames(raw_data)

# anonymizing data entries by reducing to date outbreak began
# and Causative Agent-1
chosen_columns <- raw_data %>% select("Date.Outbreak.Began", "Causative.Agent.1")

# saving cleaned data back to csv
write_csv(chosen_columns, "inputs/data/raw_data.csv")

