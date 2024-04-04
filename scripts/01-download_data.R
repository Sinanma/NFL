#### Preamble ####
# Purpose: Downloads and saves the data
# Author: Sinan Ma
# Date: Today
# Contact: sinan.ma@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(nflverse)
library(tidyverse)

#### Download data ####
qb_regular_season_stats <- 
  load_player_stats(seasons = TRUE) |> 
  filter(season_type == "REG" & position == "QB" & season == 2023 
         & !is.na(passing_epa))

#### Save data ####
write_csv(qb_regular_season_stats, "data/analysis_data.csv") 

         
