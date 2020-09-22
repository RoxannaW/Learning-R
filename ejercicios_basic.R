#1. Write a R program to take input from the user (name and age) and display the values. 
#Also print the version of R installation.

library(dplyr)

name <- readline(prompt="Enter name: ")
age <- readline(prompt="Enter age: ")
print(name)
print(age)

version

#2. Write a R program to get the details of the objects in memory. 
ls.str()

3. #Write a R program to create a sequence of numbers from 20 to 50 and 
#find the mean of numbers from 20 to 60 and sum of numbers from 51 to 91.
numbers1 <- seq(20,50)
mean(seq(20,60))
sum(seq(51,91))

#4. Write a R program to create a vector which contains 10 random integer values between -50 and +50
runif(10, min=-50, max=50)

#5. Write a R program to get the first 10 Fibonacci numbers.
# -> to ask. Not sure what is happening. 
Fibonacci <- numeric(10)
Fibonacci[1] <- Fibonacci[2] <- 1
for (i in 3:10) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]
print("Ten Fibonacci Number = ")
print(Fibonacci)

#7Write a R program to print the numbers from 1 to 100 and print "Fizz" for multiples of 3, 
#print "Buzz" for multiples of 5, and print "FizzBuzz" for multiples of both.
print(seq(0,100))
fizz <- "fizz"
replicate(3, "Fizz")
replicate(5, "Buzz")
replicate(8, "Buzz")

#->correct answer:
for (n in 1:100) {
  if (n %% 3 == 0 & n %% 5 == 0) {print("FizzBuzz")}
  else if (n %% 3 == 0) {print("Fizz")}
  else if (n %% 5 == 0) {print("Buzz")}
  else print(n)
}

#Write a R program to find the factors of a given number
print_factors = function(n) {
  print(paste("The factors of",n,"are:"))
  for(i in 1:n) {
    if((n %% i) == 0) {
      print(i)
    }
  }
}
print_factors(10)

#10. Write a R program to find the maximum and the minimum value of a given vector.
test_vector <- c(1, 5, 90, 100, 2)
min(test_vector)
max(test_vector)

#13 Write a R program to create a list of random numbers in normal distribution 
#and count occurrences of each value   
numbers2 <- runif(20)
table(numbers2)

#15 Write a R program to create three vectors numeric data, character data and logical data. 
#Display the content of the vectors and their type.
num <- c(1L, 2L, 3L)
char <- c("hello", "bye")
logic <- c(TRUE, FALSE)
print(num)
typeof(num)
print(char)
typeof(char)
print(logic)
typeof(logic)

#22 Write a R program to create  bell curve of a random normal distribution.
x = seq(-3, 3, 0.1)
plot(x = x, y = dnorm(x), type="l", bty="n")

#-> correct answer: 
n = floor(rnorm(10000, 500, 100))
t = table(n)
barplot(t)

#25 Write a R program to create a Dataframes which contain details of 5 employees and display the details
names <- c("person1", "person2", "person3", "person4", "person5")
age <- c(20L, 40L, 28L, 80L, 33L)
salary <- c(1000L, 250L, 500L, 2000L, 490L)
fired <- c(T, T, F, F, F)
employees.data <- data.frame(names, age, salary, fired)

#26 Write a R program to create a Data Frames which contain details of 5 employees and display 
#summary of the data

class(employees.data)
head(employees.data)
summary(employees.data)