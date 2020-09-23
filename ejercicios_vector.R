#3 Write a R program to append value to a given empty vector.
vector = c()
values = c('a','b','c','d','e','f','g')

for (i in 1:length(values))
  
  vector <- c(vector, values[i]) 

#6 Write a R program to find Sum, Mean and Product of a Vector
vector_1 <- c(1L, 3L, 6L, 10L)
sum(vector_1)
mean(vector_1)
prod(vector_1)

#7 Write a R program to find Sum, Mean and Product of a Vector, ignore element like NA or NaN 
sum(vector_1, na.rm=TRUE)
mean(vector_1, na.rm=TRUE)
prod(vector_1, na.rm=TRUE)

#8 Write a R program to find the minimum and the maximum of a Vector.
min(vector_1)
max(vector_1)

#9 Write a R program to sort a Vector in ascending and descending order
sort(vector_1, decreasing = FALSE)
sort(vector_1, decreasing = TRUE)

#10 Write a R program to test whether a given vector contains a specified element.
1 %in% vector_1

#12 Write a R program to access the last value in a given vector.
tail(vector_1, n=1)

#13Write a R program to find second highest value in a given vector.
sort(vector_1, decreasing = TRUE)[2]

#14 Write a R program to convert given dataframe column(s) to a vector
data1 <- data.frame(x1 = 1:3, x2 = letters[1:3])
as_vector <- as.vector(data1)