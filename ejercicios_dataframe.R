#1 1. Write a R program to create an empty data frame
 df_1 <- data.frame()
 
 #2 Write a R program to create a data frame from four given vectors.
 v1 <- c(4, 5, 6, 7)
 v2 <- c("a", "b", "c", "d")
 v3 <- c(T, F, F, T)
 v4 <- c("blue", "red", "yellow", "green")
 
df_2 <- data.frame(v1, v2, v3, v4)

#3 3. Write a R program to get the structure of a given data frame.

str(df_2)

#4 Write a R program to get the statistical summary and nature of the data of a given data frame.
summary(df_2)

#5  Write a R program to extract specific column from a data frame using column name. 

df_2$v2

#6 Write a R program to extract first two rows from a given data frame
df_2[1:2,]

#7 Write a R program to extract 3rd and 5th rows with 1st and 3rd columns from a given data frame
df_2[c(3,5), c(1,3)]

#8 Write a R program to add a new column in a given data frame

new_vec <- c(100, 101, 102, 103)
df_2$new_col=new_vec
df_2

#9 Write a R program to add new row(s) to an existing data frame
new_row <- c(1, 2, 3, 4)
newdf <- rbind(df_2, new_row)
newdf

#10 Write a R program to drop column(s) by name from a given data frame
drops <- c("v1","v2")
df_3 <- df_2[ , !(names(df_2) %in% drops)]
df_3

#11 Write a R program to drop row(s) by number from a given data frame.
df_4 <- df_2[-c(2, 4), ]
df_4

#12Write a R program to sort a given data frame by multiple column(s
df_2[
  with(df_2, order(new_col, v1)),
]

#13 Write a R program to create inner, outer, left, right join(merge) from given two data frames. 
df_inner = merge(x=df_2,y=df_3,by="new_col")
df_outer = merge(x=df_2,y=df_3,by="new_col", all=TRUE)
df_left =  merge(x=df_2,y=df_3,by="new_col", all.x = TRUE)
df_right = merge(x=df_2,y=df_3,by="new_col", all.y = TRUE)

#14 Write a R program to replace NA values with 3 in a given data frame
df_2[is.na(df_2)] <- 3

#15  Write a R program to change a column name of a given data frame
colnames(df_2)[2] <- "Hello"
df_2

#16 Write a R program to change more than one column name of a given data frame.
colnames(df_2) <- c("col_1", "col_2", "col_3", "col_4", "col_5")
df_2

#17 Write a R program to select some random rows from a given data frame
df_2[sample(nrow(df_2), 3), ]

#18 Write a R program to reorder an given data frame by column name
df_2[ , order(names(df_2))]

#19 Write a R program to compare two data frames to find the elements in first data frame 
#that are not present in second data frame
install.packages("compare")
library(compare)
help("compare")
comparison <- compare(df_2,df_3,allowAll=TRUE)

setdiff(df_2, df_3)

#20. Write a R program to find elements which are present in two given data frames.
intersect(df_2, df_3)

#21 Write a R program to find elements come only once that are common to both given data frames
help(union)  # not clear what union does?
union(df_2, df_3)

#22 Write a R program to save the information of a data frame in a file and display the information 
#of the file.

save(df_2,file="data_df2.Rda")
test_df <- load("data_df2.Rda")
file.info("data_df2.Rda")
# not sure if saved correctly?

#23 Write a R program to count the number of NA values in a data frame column.
sum(is.na(df_2[1])) 

#24  Write a R program to create a data frame using two given vectors and display 
#the duplicated elements and unique rows of the said data frame

col1 <- c(1, 2, 3, 4, 5)
col2 <- c("a", "b", "c", "d", "e")

df_new <- data.frame(col1, col2)
unique(df_new)
duplicated(df_new)

#25Write a R program to call the (built-in) dataset airquality. Check whether it is 
#a data frame or not? Order the entire data frame by the first and second column

data()
data(airquality)
head(airquality)
typeof(airquality) #not dataframe, but  a list.

airquality[order(airquality[,1:2]),]

#26 Write a R program to call the (built-in) dataset airquality. Remove the variables 
#'Solar.R' and 'Wind' and display the data frame
 data = airquality
 
 drops <- c("Solar.R","Wind")
 data_new <- data[ , !(names(data) %in% drops)]
 
 print(data_new)