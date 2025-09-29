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

## Output:[1] 34

# b) Show the vector
age

## Output: [1] 34 28 22 36 27 18 52 39 42 29 35 31 27 22 37 34 19 20 57 49 50 37 46 25 17 37 42
##         [28] 53 41 51 35 24 33 41 

### Q2: Reciprocal of age
1 / age

## Output: 
##[1] 0.02941176 0.03571429 0.04545455 0.02777778 0.03703704 0.05555556 0.01923077
##[8] 0.02564103 0.02380952 0.03448276 0.02857143 0.03225806 0.03703704 0.04545455
##[15] 0.02702703 0.02941176 0.05263158 0.05000000 0.01754386 0.02040816 0.02000000
##[22] 0.02702703 0.02173913 0.04000000 0.05882353 0.02702703 0.02380952 0.01886792
##[29] 0.02439024 0.01960784 0.02857143 0.04166667 0.03030303 0.02439024

### Q3: new_age <- c(age, 0, age)
new_age <- c(age, 0, age)
length(new_age) 
## Output: [1] 69
new_age
## Output:
## [1] 34 28 22 36 27 18 52 39 42 29 35 31 27 22 37 34 19 20 57 49 50 37 46 25 17 37 42
## [28] 53 41 51 35 24 33 41  0 34 28 22 36 27 18 52 39 42 29 35 31 27 22 37 34 19 20 57
## [55] 49 50 37 46 25 17 37 42 53 41 51 35 24 33 41

### Q4: Sort age
sort(age)
## Output:
## [1] 17 18 19 20 22 22 24 25 27 27 28 29 31 33 34 34 35 35 36 37 37 37 39 41 41 42 42
## [28] 46 49 50 51 52 53 57

### Q5: Min and Max of age
min(age)
## Output:[1] 17
max(age)
## Output:[1] 57

### Q6: Vector data
data <- c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2,
          2.5, 2.3, 2.5, 2.3, 2.4, 2.7)

# a) How many data points?
length(data)
## Output:[1] 12
# b) Show the vector
data
## Output:[1] 2.4 2.8 2.1 2.5 2.4 2.2 2.5 2.3 2.5 2.3 2.4 2.7
### Q7: Double every value in data
data * 2
# Original stays unchanged
data
## Output:[1] 4.8 5.6 4.2 5.0 4.8 4.4 5.0 4.6 5.0 4.6 4.8 5.4

### Q8: Sequences
# 8.1 Integers 1 to 100
s1 <- seq(1, 100)
length(s1)
## Output:[1] 100
s1
## Output:
##[1]   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20
##[21]  21  22  23  24  25  26  27  28  29  30  31  32  33  34  35  36  37  38  39  40
##[41]  41  42  43  44  45  46  47  48  49  50  51  52  53  54  55  56  57  58  59  60
##[61]  61  62  63  64  65  66  67  68  69  70  71  72  73  74  75  76  77  78  79  80
##[81]  81  82  83  84  85  86  87  88  89  90  91  92  93  94  95  96  97  98  99 100

# 8.2 Numbers 20 to 60
s2 <- seq(20, 60)
length(s2)
## Output: [1] 41
s2
## Output:
#[1] 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46
#[28] 47 48 49 50 51 52 53 54 55 56 57 58 59 60

# 8.3 Mean of numbers 20 to 60
mean(s2)
## Output:[1] 40

# 8.4 Sum of numbers 51 to 91
sum(51:91)
## Output:[1] 2911

# 8.5 Integers 1 to 1000, show last 10
s5 <- seq(1, 1000)
tail(s5, 10)
## Output:[1]  991  992  993  994  995  996  997  998  999 1000

### Q9: Integers 1–100 not divisible by 3, 5, 7
Filter(function(i) { all(i %% c(3, 5, 7) != 0) }, seq(100))
## Output:
# [1]  1  2  4  8 11 13 16 17 19 22 23 26 29 31 32 34 37 38 41 43 44 46 47 52 53 58 59
# [28] 61 62 64 67 68 71 73 74 76 79 82 83 86 88 89 92 94 97

### Q10: Sequence backwards 1 to 100
seq(100, 1)
##Output: 
#[1] 100  99  98  97  96  95  94  93  92  91  90  89  88  87  86  85  84  83  82  81
#[41]  60  59  58  57  56  55  54  53  52  51  50  49  48  47  46  45  44  43  42  41
#[61]  40  39  38  37  36  35  34  33  32  31  30  29  28  27  26  25  24  23  22  21
#[81]  20  19  18  17  16  15  14  13  12  11  10   9   8   7   6   5   4   3   2   1

### Q11: Multiples of 3 or 5 below 25, and their sum
nums <- 1:24
mult_3_or_5 <- nums[ nums %% 3 == 0 | nums %% 5 == 0 ]
mult_3_or_5
##Output: [1]  3  5  6  9 10 12 15 18 20 21 24
sum(mult_3_or_5)
##Output:[1] 143
length(mult_3_or_5)
##Output:[1] 11

### Q12: Block with braces
# Wrong way (produces error):
# {x <- 0
# + x + 5 + }
# Correct way:
{
  x <- 0
  x + 5
}
## Output: [1] 5
### Q13: score vector and indexing
score <- c(72, 86, 92, 63, 88, 89, 91, 92, 75, 75, 77)
score[2]
## Output:[1] 86
score[3]
## Output:[1] 92

### Q14: Vector a with NA
a <- c(1, 2, NA, 4, NA, 6, 7)
print(a, na.print = "-999")
## Output:[1]    1    2 -999    4 -999    6    7

# Optional: replace NA permanently with 999
a2 <- a
a2[is.na(a2)] <- 999
a2
## Output:[1]   1   2 999   4 999   6   7

### Q15: Change class of vector
x <- c(2, 3, 4)
class(x)         
class(x) <- "foo"
class(x)         
x
## Output:
### [1] "foo"
### [1] 2 3 4
### attr(,"class")
### [1] "foo"

### Additional Example: readline()
# Commented out for safe sourcing
# Run these line by line interactively if needed:
# name <- readline(prompt = "Input your name: ")
# age  <- readline(prompt = "Input your age: ")
# print(paste("My name is", name, "and I am", age, "years old."))
# print(R.version.string)

