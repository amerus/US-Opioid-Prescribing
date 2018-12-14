library(shinydashboard)
library(tidyverse)
library(ggplot2)

# load datset of specialties and their prescription counts by state
specialty_prescriptions <- readRDS('./data/opioids_tidy_four_variables.RDS')

# create specialties in alphabetical order for dropdown
specialties <- as.data.frame(specialty_prescriptions) %>% 
    select(Specialty) %>% 
    unique()

specialties <- sort(specialties$Specialty)

states <- as.data.frame(specialty_prescriptions) %>%
  select(State) %>%
  filter(State != 'TN') %>%
  unique()

states <- sort(states$State)