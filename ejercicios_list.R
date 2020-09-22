#1.Write a R program to create a list containing strings, numbers, vectors and a logical values.

list_1 <- list("hello", 2, c(3L, 4L, 5L), TRUE)
print(list_1)

#8Write a R program to merge two given lists into one list
list_2 <- list("Blue", 5, c(T, F), FALSE)

mapply(c, list_1, list_2, SIMPLIFY=FALSE) #good?

c(list_1, list_2)

#10 Write a R program to create a list of dataframes and access each of those dataframes from the list
data1 <- data.frame(x1 = 1:3, x2 = letters[1:3])

data2 <- data.frame(y1 = c(5, 1, 5, 1, 5), y2 = rep("a", 5))
df_lists <-list(data1, data2)  
df_lists[1]
df_lists[2]

#11  Write a R program to count number of objects in a given list.
length(df_lists)

#12 Write a R program to convert a given dataframe to a list by rows
help("as.list")

list_df <- split(data1, seq(nrow(data1)))

#14.Write a R program to assign NULL to a given list element. Go to the editor
list_3 <- list(1,2,3,4)
list_3[1] = list(NULL)
print(list_3)
