#16 Write a R program to convert given dataframe column(s) to a vector
data1 <- data.frame(x1 = 1:3, x2 = letters[1:3])
vec1 <- data1$x1 
vec2 <- data1$x2 

#20  Write a R program to reverse the order of given vector.
vector_1 <- c(5, 7, 9, 6, 5, 1, 5)

rev(vector_1)

#23  Write a R program to convert two columns of a data frame to a named vector
vector_3 <- tibble::deframe(data1) 
