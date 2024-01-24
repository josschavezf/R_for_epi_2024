

fruits <- list(name = "apple",
               quantity = 5,
               properties = c("small", "red", "rounded"))

fruits

fruits["name"]
fruits[1]

fruits[[1]]

fruits[2]
fruits["quantity"]

fruits[[2]]

class(fruits[1])
class(fruits[[1]])

fruits[1]
fruits[[1]]

fruits
fruits[[3]]

fruits[[3]][2]

fruits[["properties"]][1:2]

fruits[1:2]

fruits[c(1,3)]

fruits[-1]


fruits["properties"]

fruits$properties[1:2]

fruits$quantity

fruits$properties[3]

x["new_element"] <- 100

fruits["edible_shell"] <- TRUE

fruits

fruits$hard_shell <- FALSE

fruits

patient_1 <- list(name = "John",
                  last_name = "Doe",
                  weight = 170,
                  glucose = c(85, 90, 87, 89, 91))

patient_1

patient_1[1:2]
patient_1[c(1,2)]
patient_1[c("name", "last_name")]

patient_1$glucose[3:5]
patient_1[["glucose"]][3:5]

patient_1[-3]

patient_1$bp_level <- c("120/70","125/75","100/65")

patient_1

fruits <- data.frame(name = c("apples", "berries", "mangos", "bananas"),
                     number = c(1, 10, 7, 2),
                     edible_shell = c(TRUE, TRUE, FALSE, FALSE))


fruits
View(fruits)

nrow(fruits)
ncol(fruits)
dim(fruits)

rownames(fruits)
rownames(fruits) <- c("fruit_1", "fruit_2", "fruit_3", "fruit_4")

fruits

colnames(fruits)
colnames(fruits) <- c("Name", "Number", "Edible_shell")

fruits

patients <- data.frame(first_name = c("Ava", "Richard", "Olivia"),
                       last_name = c("Smith", " Brown", "Williams"),
                       age = c(65,20,47),
                       co_morbidity = c(TRUE, FALSE, FALSE))
patients

ncol(patients)
nrow(patients)

dim(patients)

rownames(patients)
colnames(patients)

fruits

fruits[2,1]

fruits[4,2]

fruits[1:2,2]
fruits[c(2,4),2]
fruits[,3]

class(fruits[,1:2])

fruits[c(1,3),c(1,3)]

fruits["fruit_1","Name"]

fruits[c("fruit_1", "fruit_2"),c("Name", "Number")]

fruits

fruits[c("fruit_3", "fruit_4"),c("Name", "Edible_shell")]

fruits[c("fruit_3", "fruit_4"),c(1,3)]

patients

patients[1:2,2:3]

rownames(patients)

patients[c("1","2"),c("last_name", "age")]

patients[1:2,]

patients[,]

fruits$Name

patients$last_name[2]

patients$age[3]


fruits

cbind(fruits, "hard_shell" = c(FALSE, FALSE, FALSE, FALSE))

fruits <- cbind(fruits, "hard_shell" = c(FALSE, FALSE, FALSE, FALSE))

fruits

fruits$color <- c("red", "blue", "yellow", "yellow")

fruits

rbind(fruits, "fruit_5" = c("coconut", 3, FALSE, TRUE, "brown"))

fruits <- rbind(fruits, "fruit_5" = c("coconut", 3, FALSE, TRUE, "brown"))

fruits

patients

patients <- cbind(patients, glucose = c(80,85,90))

patients

patients$weight <- c(180,200,153)

patients

rbind(patients, c("Sam", "Newton", 50,FALSE,83,160))

patients <- rbind(patients, c("Sam", "Newton", 50,FALSE,83,160))

patients


