### Worksheet-2 in R
### Author: Rouver Regacho
### Course: CS101
### Using Vectors

### 1. Create a vector using : operator

# a. Sequence from -5 to 5
x1 <- -5:5
print(x1) # Output: -5 -4 -3 -2 -1 0 1 2 3 4 5

# b. x <- 1:7
x2 <- 1:7
print(x2) # Output: 1 2 3 4 5 6 7


### 2. Create a vector using seq() function

# a. seq(1, 3, by=0.2)
x3 <- seq(1, 3, by=0.2)
print(x3) # Output: 1.0 1.2 1.4 ... 3.0


### 3. Factory workers ages

ages <- c(34,28,22,36,27,18,52,39,42,29,35,31,27,
          22,37,34,19,20,57,49,50,37,46,25,17,37,
          43,53,41,51,35,24,33,41,53,40,18,44,38,
          41,48,27,39,19,30,61,54,58,26,18)

# a. 3rd element
print(ages[3]) # Output: 22

# b. 2nd and 4th element
print(ages[c(2,4)]) # Output: 28 36

# c. All but the 1st element
print(ages[-1]) # All ages except the first one


### 4. Named vector

x4 <- c("first"=3, "second"=0, "third"=9)
print(names(x4)) # Output: "first" "second" "third"
print(x4[c("first","third")]) # Output: first=3 third=9


### 5. Sequence modification

x5 <- -3:2
print(x5) # Before modification
x5[2] <- 0
print(x5) # After modification


### 6. Diesel fuel purchases of Mr. Cruz

month <- c("Jan","Feb","March","Apr","May","June")
price <- c(52.50,57.25,60.00,65.00,74.25,54.00)
liters <- c(25,30,40,50,10,45)

fuel <- data.frame(month, price, liters)
print(fuel)

# Average fuel expenditure (weighted mean)
avg_exp <- weighted.mean(price, liters)
print(avg_exp) # Output ≈ 60.41667


### 7. Built-in dataset "rivers"

data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), 
          var(rivers), sd(rivers), min(rivers), max(rivers))
print(data)

# Output:
# [1] 141.00000 59194.00000 591.18440 425.00000 
# [5] 331618.18065 575.75408 135.00000 3710.00000


### 8. Forbes Ranking

# Create vectors for Power Ranking, Celebrity Name, and Pay
ranking <- c(1,2,3,4,5,6,7,8,9,10,
             11,12,13,14,15,16,17,18,19,20,
             21,22,23,24,25)

celeb <- c("Tom Cruise","Rolling Stones","Oprah Winfrey","U2","Tiger Woods",
           "Steven Spielberg","Howard Stern","50 Cent","Cast of the Sopranos","Dan Brown",
           "Bruce Springsteen","Donald Trump","Muhammad Ali","Paul McCartney","George Lucas",
           "Elton John","David Letterman","Phil Mickelson","J.K Rowling","Bradd Pitt",
           "Peter Jackson","Dr. Phil McGraw","Jay Leno","Celine Dion","Kobe Bryant")

pay <- c(67,90,225,110,90,
         332,302,41,52,88,
         55,44,55,40,233,
         34,40,47,75,25,
         39,45,32,40,31)

# Combine into a data frame
forbes <- data.frame(ranking, celeb, pay)
print(forbes)

### b. Modify J.K. Rowling → ranking = 15, pay = 90
forbes$ranking[forbes$celeb=="J.K Rowling"] <- 15
forbes$pay[forbes$celeb=="J.K Rowling"] <- 90

# Show updated data
print(forbes[forbes$celeb=="J.K Rowling", ])