# calcolatrice
2+4
6-2
5*3 
7/2

# functions 
sum(1,4,10)
help(sum)
?sum

# creating objects
myresults <- sum(1,4,10)

# sequences 
1:10
seq(from=1, to=10)
seq(from=0, to=100, by=5) 
seq(0, 100, by=5) 

seq(from = 0, to = 100, length.out =  9)

# your turn
# 1.Create a sequence of odd numbers between 0 and 100 and save it in an object called odd_numbers


# mean (grades)
hw.grades <- c(80, 90, 85, 71, 69, 85, 83, 88, 99, 81, 92)
sum.hw.grades <- sum(hw.grades)
number.hw.grades <- length(hw.grades) 
sum.hw.grades / number.hw.grades

# but R is your friend 
m.....

# median 
edu <- c( rep(x=0, times=1), rep(x=1, times=5), rep(x=2, times=55),
          rep(x=3, times=20), rep(4,10), rep(5,9) )
median()

# mode
stay <- c(rep(0, 509), rep(1, 491))
table(stay)

# variance 
var()

# standard deviation
sd()

# range
range(edu)

# 25% percentile 
quantile(edu, 0.25) 

# 75th percentile
quantile(edu, 0.75) 







