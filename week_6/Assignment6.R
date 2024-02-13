### Introduction to Epidemiology Data Analysis with R. 

### Data transformation

# Assignment week 6: 


## Read the cause_of_death.xlsx file and store the table within the cause_of_death variable
cause_of_death <- readxl::read_excel("cause_of_death.xlsx")

### 1) How many observations are in this dataset? 

### 2) How many variables are in this dataset? 

### 4) What is the average number and standard deviation of deaths. Use the pipe!

### 5) What was the mean number of deaths per year, race and sex? 
### (Calculate all combinations at the same time, not separated)
### The result should look like this:
#1980 American Indian or Alaska Native Female           205.
#1980 American Indian or Alaska Native Male             332.
#1980 Asian or Pacific Islander        Female           350 
#1980 Asian or Pacific Islander        Male             566.
#.....

### 6) Using the pipe, create a tibble with the number of causes of death in each year

### 7) Using the pipe, extract all the Asian or Pacific Islander Females from 2019 and order by number of deaths 

### 8) import the Blood_metals.csv file
### What is the problem with this dataset?
### How would you fix it?


### 8) import the Sinai_covid.csv file 
### Use pivoting to put all the columns describing data on comorbidities (columns asthma, copd, htn, obesity, diabetes, chronic_kidney_disease, hiv_flag, cancer_flag) 
### into 2 columns: one - specifying the name of the comorbidity, and the second - indicating if a patient has it or not
