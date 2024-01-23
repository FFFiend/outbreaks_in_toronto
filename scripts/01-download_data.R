#### Preamble ####
# Purpose: Downloads and saves the data from the Outbreaks in Toronto 
# Healthcare Institutions dataset on the City of Toronto: Open Data Portal.
# Author: Owais Zahid
# Date: 22 January 2024
# Contact: owais.zahid@mail.utoronto.ca
# License: MIT
# Pre-requisites: N/A


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)


# listing all the year's datasets on the outbreaks page.
outbreaks_prev_year = list_package_resources("outbreaks-in-toronto-healthcare-institutions")

# obtaining outbreak dataset for 2023.
outbreaks_prev_year = get_resource("15ac28a1-ece5-4a97-8e72-11227be9f4f7")

#### Save data ####
write_csv(outbreaks_prev_year, "inputs/data/raw_data.csv")

