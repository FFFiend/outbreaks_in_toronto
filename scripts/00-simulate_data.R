#### Preamble ####
# Purpose: Simulate 
# Author: Owais Zahid
# Email: owais.zahid@mail.utoronto.ca
# Date: 22 January 2024
# Prerequisites: Know where to obtain outbreak data

#### Workspace setup ####
library("tidyverse")

### Setting seed ###
set.seed(123)

### Setting start end months of 2023 ###
### and the number of outbreaks to match the dataset size ###
start_date <- as.Date("2023-01-01")
end_date <- as.Date("2023-12-31")
num_outbreaks <- 1067

outbreak_data <- data.frame(
  Date = sample(seq(start_date, end_date, by = "day"), num_outbreaks, replace = TRUE),
  Institution = paste("Institution", seq(1, num_outbreaks)),
  Causative_Agent = sample(c(
    "COVID-19", "Parainfluenza", "Respiratory syncytial virus", "Coronavirus*",
    "Metapneumovirus", "Influenza A (Not subtyped)", "Pending",
    "Unable to identify", "Norovirus", "Influenza A (H3)", "Rhinovirus",
    "Group B Streptococcal disease (neonatal)", "Influenza A (H1N1)",
    "Enterovirus/Rhinovirus", "Enterovirus", "Parainfluenza PIV III",
    "Streptococcus pyogenes", "CPE Enterobacter unspecified (NDM)",
    "CPE Unspecified (KPC)"
  ), num_outbreaks, replace = TRUE)
)

# Step 2: Create a histogram with stacked bars
library(ggplot2)

ggplot(outbreak_data, aes(x = Date, fill = Causative_Agent)) +
  geom_bar(position = "stack") +
  labs(title = "Outbreaks Over 2023",
       x = "Date",
       y = "Total Cases",
       fill = "Causative Agent") +
  theme_minimal()

