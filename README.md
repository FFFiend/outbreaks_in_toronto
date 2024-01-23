# outbreaks_in_toronto

# Note on LLM Usage
ChatGPT-3.5 was used at various times throughout the investigation of 
the outbreak data in 2023. A detailed log of the usage can be found in
```inputs/llm/usage.txt```.

## Overview

This repo provides an analysis on the impact of outbreaks of communicable diseases 
other than COVID-19 for the year 2023.

## File Structure

The repo is structured as:

-   `input/data` contains the data sources used in analysis including the raw data.
-   `outputs/data` contains the cleaned dataset that was constructed.
-   `outputs/paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper.
-   `scripts` contains the R scripts used to simulate, download and clean data.