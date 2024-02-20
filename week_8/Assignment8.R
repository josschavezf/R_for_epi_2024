# Assignment week 8

# Exercise 1: Using the sinai_covid dataset, 
# complete the following tasks:

library(tidyverse)
library(janitor)

sinai_covid <- read_csv("Sinai_covid.csv")
sinai_covid <- clean_names(sinai_covid)

# - Count the number of patients depending on 
# their smoking status per ethnic group. 
# Save the result in a variable


# - Represent the data on a column plot and fill by smoking_status


# - Split each bar by the smoking status


# - Add a plot title, axis title and change the legend 
# title to remove the underscores


#  Exercise 2:  Using the sinai_covid dataset, 
# complete the following tasks:

# - Count the number of patients depending on their 
# diabetes status per ethnic group and sex



# - Represent the data on a column plot, with the ethnic 
# groups at x axis



# - Split each bar depending on the diabetes status



# - Add a plot title, axis titles and modify the legend title 



# - Change the filling colors of the bars 
# (use scale_fill_brewer or scale_fill_manual )




# - Use the theme() layer to modify the angle 
# or size of the axis text 




# - Split the plots by sex (use facets)




