#### Preamble ####
# Purpose: Simulate 
# Author: Owais Zahid
# Email: owais.zahid@mail.utoronto.ca
# Date: 22 January 2024
# Prerequisites: Know where to obtain outbreak data


### Workspace setup ###
library(tidyverse)

### Setting prime number seed ###
set.seed(479)

# NOTE: the following code was generated using the help of ChatGPT-3.5
# A detailed log of the conversation can be found in inputs/llm/usage.txt

# Step 1: Generate random data
# choosing 1067 as the number of entries as that is the dataset's size
n_entries <- 1067
start_date <- as.Date("2023-01-01")
end_date <- as.Date("2023-12-31")

dates <- sample(seq(start_date, end_date, by = "day"), n_entries, replace = TRUE)
institutions <- sample(letters, n_entries, replace = TRUE)
causative_agents <- sample(c("COVID-19", "Parainfluenza", 
                             "Respiratory syncytial virus", 
                             "Coronavirus*", "Metapneumovirus", 
                             "Influenza A (Not subtyped)", 
                             "Pending", "Unable to identify",
                             "Norovirus", "Influenza A (H3)", 
                             "Rhinovirus", "Group B Streptococcal disease
                             (neonatal)", 
                             "Influenza A (H1N1)", 
                             "Enterovirus/Rhinovirus", 
                             "Enterovirus", 
                             "Parainfluenza PIV III", "Streptococcus pyogenes",
                             "CPE Enterobacter unspecified (NDM)", 
                             "CPE Unspecified (KPC)"), 
                           n_entries, replace = TRUE)

data <- data.frame(Date = dates, Institution = institutions, CausativeAgent = causative_agents)

# Step 2: Create histogram
data %>%
  group_by(Date, CausativeAgent) %>%
  summarise(Count = n()) %>%
  ggplot(aes(x = Date, y = Count, fill = CausativeAgent)) +
  geom_bar(stat = "identity", position = "stack") +
  labs(title = "Outbreaks Over the Year 2023",
       x = "Date",
       y = "Total Number of Cases") +
  theme_minimal()

