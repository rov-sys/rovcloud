######
# CS101 Worksheet-1 in R
# Name: Rouver Regacho
# File: RWorksheet_Regacho#1.R
######

### Q1: Vector age
age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29,
         35, 31, 27, 22, 37, 34, 19, 20, 57, 49,
         50, 37, 46, 25, 17, 37, 42, 53, 41, 51,
         35, 24, 33, 41)

# a) How many data points?
length(age)
# b) Show the vector
age

### Q2: Reciprocal of age
1 / age

### Q3: new_age <- c(age, 0, age)
new_age <- c(age, 0, age)
length(new_age)
new_age

### Q4: Sort age
sort(age)

### Q5: Min and Max of age
min(age)
max(age)

### Q6: Vector data
data <- c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2,
          2.5, 2.3, 2.5, 2.3, 2.4, 2.7)

# a) How many data points?
length(data)
# b) Show the vector
data

### Q7: Double every value in data
data * 2
# Original stays unchanged
data

### Q8: Sequences
# 8.1 Integers 1 to 100
s1 <- seq(1, 100)
length(s1)
s1

# 8.2 Numbers 20 to 60
s2 <- seq(20, 60)
length(s2)
s2

# 8.3 Mean of numbers 20 to 60
mean(s2)

# 8.4 Sum of numbers 51 to 91
sum(51:91)

# 8.5 Integers 1 to 1000, show last 10
s5 <- seq(1, 1000)
tail(s5, 10)

### Q9: Integers 1–100 not divisible by 3, 5, 7
Filter(function(i) { all(i %% c(3, 5, 7) != 0) }, seq(100))

### Q10: Sequence backwards 1 to 100
seq(100, 1)

### Q11: Multiples of 3 or 5 below 25, and their sum
nums <- 1:24
mult_3_or_5 <- nums[ nums %% 3 == 0 | nums %% 5 == 0 ]
mult_3_or_5
sum(mult_3_or_5)
length(mult_3_or_5)

### Q12: Block with braces
# Wrong way (produces error):
# {x <- 0
# + x + 5 + }
# Correct way:
{
  x <- 0
  x + 5
}

### Q13: score vector and indexing
score <- c(72, 86, 92, 63, 88, 89, 91, 92, 75, 75, 77)
score[2]
score[3]

### Q14: Vector a with NA
a <- c(1, 2, NA, 4, NA, 6, 7)
print(a, na.print = "-999")

# Optional: replace NA permanently with 999
a2 <- a
a2[is.na(a2)] <- 999
a2

### Q15: Change class of vector
x <- c(2, 3, 4)
class(x)         
class(x) <- "foo"
class(x)         
x

### Additional Example: readline()
# Commented out for safe sourcing
# Run these line by line interactively if needed:
# name <- readline(prompt = "Input your name: ")
# age  <- readline(prompt = "Input your age: ")
# print(paste("My name is", name, "and I am", age, "years old."))
# print(R.version.string)
Write to Rouver Regacho
