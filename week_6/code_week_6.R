library(tidyverse)

# import dataset
sinai_covid <- read_csv("Sinai_covid.csv")

# count
sinai_covid %>%
    count(sex)

table1

table4a %>%
    pivot_longer(c('1999', '2000'),
                 names_to = "year",
                 values_to = "cases")

table2
