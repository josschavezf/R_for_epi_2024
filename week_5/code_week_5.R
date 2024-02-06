library(dplyr)

df <- data.frame(x = letters,
                 y = 1:26,
                 z = sample(c(TRUE, FALSE), 
                            26,
                            replace = TRUE))

df

dt <- tibble(x = letters,
             y = 1:26,
             z = sample(c(TRUE, FALSE),
                        26,
                        replace = TRUE))

dt

library(readr)

sinai_covid <- read.csv("Sinai_covid.csv")

sinai_covid

class(sinai_covid)

sinai_covid <- read_csv("Sinai_covid.csv")

sinai_covid

arrange(sinai_covid, by = age)

sinai_covid <- arrange(sinai_covid, by = age)

sinai_covid

filter(sinai_covid, age > 50)

filter(sinai_covid, age > 50 & sex == "FEMALE")

filter(sinai_covid, age > 50, sex == "FEMALE")

filter(sinai_covid, age > 50 | sex == "FEMALE")

View(filter(sinai_covid, age > 50 | sex == "FEMALE"))


select(sinai_covid, id, age, facility)


x <- filter(sinai_covid, age > 50)

x <- select(x, id, age, facility)

x

x <- filter(sinai_covid, 
       facility == "THE MOUNT SINAI HOSPITAL" |  
           facility == "MOUNT SINAI BI BROOKLYN")

x <- select(x, id, sex, ethnicity, bmi)

x

arrange(x, by = desc(bmi))

# from sinai covid, males, peruvian, > 10 yo
filter(sinai_covid, sex == "MALE", ethnicity == "PERUVIAN", age > 10)

# smokers or quiters, with diabetes and obsesity
filter(sinai_covid, smoking_status == "YES" |
           smoking_status == "QUIT",
       diabetes == 1,
       obesity == 1)

View(mutate(sinai_covid, log_bmi = log(bmi)))

mutate(sinai_covid, bmi_10 = bmi + 10)

# id, race, bmi
small_sinai_covid <- select(sinai_covid, id, race, bmi)

# log2 bmi 
small_sinai_covid

mutate(small_sinai_covid, log2_bmi = log2(bmi))

small_sinai_covid <- mutate(small_sinai_covid, 
                            log2_bmi = log2(bmi))

small_sinai_covid

tolower(sinai_covid$ethnicity)

mutate(small_sinai_covid, race_tolower = tolower(race))

summarise(sinai_covid, mean_age = mean(age))

summarise(sinai_covid, 
          mean_age = mean(age),
          median_age = median(age))

x <- group_by(sinai_covid, sex)

x

summarise(x, 
          mean_age = mean(age),
          median_age = median(age))

group_by(sinai_covid, race) %>% 
    summarise(mean_age = mean(age),
              median_age = median(age))


filter(sinai_covid, facility == "THE MOUNT SINAI HOSPITAL" |
           facility == "MOUNT SINAI BI BROOKLYN") %>% 
    select(id, sex, ethnicity, bmi) %>% 
    arrange(bmi)



