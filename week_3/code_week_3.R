x <- c(1,5,10)
x

names(x)

x <- c("number_a" = 1, "number_b" = 5, 
       "number_c" = 10)

x
class(x)
names(x)

x <- c(1,5,10)
names(x)

names(x) <- c("number_a", "number_b", "number_c")
names(x)

y <- 50
names(y)
y

names(y) <- "number_d"
y
names(y)

# second element from x
x[2]

x["number_b"]

# first and third element of x
x[c(1,3)]

x[c("number_a", "number_c")]

names(x)


my_vector <- 1:10
my_vector

my_vector > 4

my_vector[my_vector > 4]

my_vector[my_vector >= 4]

my_vector[my_vector == 6]

my_vector[my_vector != 6]

my_vector[!my_vector == 6]


my_vector2 <- c("a", "a", "b", "c", "c", "c")
my_vector2

# get only "a"

my_vector2 == "a"

my_vector2[my_vector2 == "a"]

# all elements except "b"

my_vector2[!my_vector2 == "b"]
my_vector2[my_vector2 != "b"]

my_vector

mean(my_vector)

temperature_nyc <- c("Monday" = 55,
                     "Tuesday" = 55,
                     "Wednesday" = 66,
                     "Thursday" = 50,
                     "Friday" = 48,
                     "Saturday" = 45,
                     "Sunday" = 47)
temperature_nyc

temperature_nyc[1:3]

temperature_nyc[c("Monday", "Tuesday", "Wednesday")]

temperature_nyc[c("Tuesday", "Thursday", "Saturday")]

temperature_nyc > 50
temperature_nyc[temperature_nyc > 50]

mean(temperature_nyc)

temperature_nyc > mean(temperature_nyc)

temperature_nyc[temperature_nyc > mean(temperature_nyc)]

vector_1 <- c(1,7,18)

vector_1[4] <- 50

vector_1

vector_1 <- c(vector_1, 15)

vector_1

vector_1 <- c(vector_1[1:3], 20, vector_1[4:5])

vector_1

vector_1 <- c(100, vector_1)
vector_1

vector_2 <- c("a", "b", "c", "d", "e")

vector_2[-2]

vector_2 <- vector_2[-2]
vector_2

names(vector_2) <- c("letter_a", "letter_c",
                     "letter_d", "letter_e")

vector_2
names(vector_2)

fruits <- c("apples" = 1, 
            "cherries" = 10,
            "mangos" = 7)

fruits

fruits <- c(fruits, berries = 20)

fruits <- c(fruits, "berries" = 20)

fruits[4] <- 20

names(fruits)[4] <- "berries"

fruits["berries"] <- 20

fruits

# remove cherries
fruits <- fruits[-2]

fruits

fruits[!names(fruits) == "cherries"]

fruits <- fruits[names(fruits) != "cherries"]

fruits

vector_3 <- c("a", "c", "d", "e")
vector_3

vector_3[2] <- "b"

vector_3

vector_3[vector_3 == "d"] <- "g"

vector_3

matrix_1 <- matrix(1:12, nrow = 4)

matrix_1

matrix_1 <- matrix(1:12, ncol = 4)
matrix_1

matrix_1 <- matrix(1:12, nrow = 3, ncol = 4)

matrix_1

matrix_2 <- matrix(1:12, nrow = 5, ncol = 4)
matrix_2

matrix_3 <- matrix(1:12, nrow = 3, ncol = 4,
                   byrow = TRUE)
matrix_3

matrix_1 + 10
matrix_1 - 10
matrix_1 * 10
matrix_1/10
matrix_1^2
sqrt(matrix_1)

matrix_a <- matrix(1:10, nrow = 2)
matrix_a

matrix_b <- matrix(11:20, nrow = 2)
matrix_b

matrix_a + matrix_b

matrix_c <- matrix(1:6, nrow = 2)
matrix_c

matrix_a + matrix_c

dim(matrix_1)
nrow(matrix_1)
ncol(matrix_1)

matrix_1[1,2]

matrix_1[3,3]

matrix_1[1:3,1:2]

matrix_1[,1:2]

matrix_1[1:2,]


matrix_d <- matrix(c(100,100,101, 102,106,107),
                   ncol = 3)

matrix_d

matrix_d[2,1]

matrix_d[,2:3]

ncol(matrix_d)

matrix_d[,2:ncol(matrix_d)]
