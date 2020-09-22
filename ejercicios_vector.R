# 3Write a R program to append value to a given empty vector
vector_1 <- c()
values = c('a','b','c','d','e','f','g')
for (i in 1:length(values))
  vector_1[i] <- values[i]
#6 Write a R program to find Sum, Mean and Product of a Vector. 
vector_2 <- c(1, 4, 5, 6)
sum(vector_2)
mean(vector_2)
prod(vector_2,)

#7 Write a R program to find Sum, Mean and Product of a Vector, ignore element like NA or NaN. 
sum(vector_2, na.rm = TRUE)
mean(vector_2, na.rm = TRUE)
prod(vector_2, na.rm = TRUE)

#8Write a R program to find the minimum and the maximum of a Vector.
min(vector_2)
max(vector_2)

#9 Write a R program to sort a Vector in ascending and descending order.
sort(vector_2, decreasing = FALSE)
sort(vector_2, decreasing = TRUE)

#10  Write a R program to test whether a given vector contains a specified element
5 %in% vector_2

#12  Write a R program to access the last value in a given vector.
tail(vector_2, n=1)

#13 Write a R program to find second highest value in a given vector.
sort(vector_2, decreasing = TRUE)[2]

#14 Write a R program to find nth highest value in a given vector.
n = 1
sort(vector_2, decreasing = TRUE)[n]
n = 2
sort(vector_2, decreasing = TRUE)[n]
n = 3
sort(vector_2, decreasing = TRUE)[n]
n = 4
sort(vector_2, decreasing = TRUE)[n]


#16 Write a R program to convert given dataframe column(s) to a vector
data1 <- data.frame(x1 = 1:3, x2 = letters[1:3])
vec1 <- data1$x1 
vec2 <- data1$x2 



#20  Write a R program to reverse the order of given vector.
vector_1 <- c(5, 7, 9, 6, 5, 1, 5)

rev(vector_1)

#23  Write a R program to convert two columns of a data frame to a named vector
vector_3 <- tibble::deframe(data1) 
