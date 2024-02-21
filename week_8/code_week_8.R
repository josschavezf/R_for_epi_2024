library(tidyverse)

sinai_covid <- read_csv("Sinai_covid.csv")

ggplot(sinai_covid,
       aes(x = age, y = bmi, color = bmi,
           shape = smoking_status)) +
    geom_point()


ggplot(sinai_covid,
       aes(x = age, y = bmi, color = ethnicity,
           shape = sex)) +
    geom_point()


ggplot(sinai_covid,
       aes(x = ethnicity, y = smoking_status)) +
    geom_point()


sinai_covid %>% 
    group_by(ethnicity) %>% 
    count(smoking_status) %>% 
    ggplot(aes(x = ethnicity, y = smoking_status,
               size = n, color = n)) +
    geom_point()

ob_counts <- sinai_covid %>% 
    group_by(facility) %>% 
    count(obesity) %>% 
    mutate(obesity = case_when(obesity == 0 ~ "No",
                     obesity == 1 ~ "Yes"))

ob_counts

ggplot(ob_counts, 
       aes(x = factor(obesity), y = facility,
           size = n, color = n)) +
    geom_point()


ggplot(ob_counts,
       aes(x = n, y = facility,
           fill = factor(obesity))) +
    geom_col(position = position_dodge2()) +
    labs(title = "Patients with obesity per hospital",
         x = "Number of patients",
         y = "",
         fill = "Obesity")
    

asthma_count <- sinai_covid %>% 
    group_by(ethnicity) %>% 
    count(asthma) %>% 
    mutate(asthma = case_when(asthma == 0 ~ "No",
                              asthma == 1 ~ "Yes"))

asthma_count

ggplot(asthma_count, 
       aes(x = n, y = ethnicity,
           fill = asthma)) +
    geom_col(position = position_dodge2()) +
    labs(title = "Patients with asthma per ethnicity",
         x = "Number of patients",
         y = "",
         fill = "Asthma")

ob_counts <- sinai_covid %>% 
    group_by(facility, sex) %>% 
    count(obesity) %>% 
    mutate(obesity = case_when(obesity == 0 ~ "No",
                               obesity == 1 ~ "Yes"))

ob_counts
    
ggplot(ob_counts,
       aes(x = n, y = facility)) +
    geom_col(position = position_dodge2()) +
    facet_grid(rows = vars(obesity),
               cols = vars(sex),
               labeller = label_both)

smoking_counts <- sinai_covid %>% 
    group_by(ethnicity, asthma) %>% 
    count(smoking_status) %>% 
    mutate(asthma = case_when(asthma == 0 ~ "No",
                              asthma == 1 ~ "Yes"))

smoking_counts

ggplot(smoking_counts, 
       aes(x = n, y = ethnicity, fill = asthma)) +
    geom_col() +
    facet_grid(rows = vars(asthma),
               cols = vars(smoking_status),
               labeller = label_both)

ggplot(ob_counts,
       aes(x = n, y = facility)) +
    geom_col() +
    labs(title = "Obesity incidence per facility",
         x = "Number of patients",
         y = "") +
    facet_wrap(vars(sex, obesity),
               scales = "free_x",
               labeller = label_both)


ggplot(smoking_counts, 
       aes(x = n, y = ethnicity, fill = asthma)) +
    geom_col() +
    facet_wrap(vars(asthma, smoking_status),
               labeller = label_both)


sinai_covid %>% 
    ggplot(aes(x = age, y = log10(bmi) )) +
    geom_point() +
    geom_smooth(formula = y ~ x,
                se = FALSE)


sinai_covid %>% 
    ggplot(aes(x = age, y = bmi,
               color = facility)) +
    geom_point() +
    scale_color_brewer(palette = 3,
                       direction = -1)

sinai_covid %>% 
    ggplot(aes(x = age, y = bmi,
               color = facility)) +
    geom_point() +
    scale_color_manual(values = c("red",
                                  "#91a9cc",
                                  "yellow",
                                  "darkgreen",
                                  "orange"))


sinai_covid %>% 
    ggplot(aes(x = age, y = bmi,
               color = facility)) +
    geom_point() +
    labs(title = "Age and bmi by facility") +
    scale_color_manual(values = c("red",
                                  "#91a9cc",
                                  "yellow",
                                  "darkgreen",
                                  "orange")) +
    theme_bw() +
    theme(plot.title = element_text(hjust = 0.5,
                                    face = "bold"))


ggplot(sinai_covid,
       aes(x = race, y = age)) +
    geom_boxplot() +
    theme(axis.text.x = element_text(angle = 45,
                                     hjust = 1,
                                     size = 12))


