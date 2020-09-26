#---  exercise 1 & 2

library(caret)
library(lattice)
library(ggplot2)
library(tidyverse)
install.packages("distplot")
library(corrgram)
library(corrplot)
library(distplot)
library(pls)

file.choose()
housing_data <- read.csv("C:\\Users\\Roxan\\OneDrive\\Documentos\\My_map_2\\R\\Carpeta_Clara_Basics-R\\R-basics\\day4\\data\\USA_Housing.csv")

head(housing_data)
str(housing_data)
summary(housing_data)

plot(housing_data)

#plot correlation
corrgram(housing_data) 

correlations = cor(housing_data)
corrplot(correlations, method="color")

#showing column names. 
colnames(housing_data)

#removing address column
housing_data <- select(housing_data, -Address)
colnames(housing_data)

--------------------------------------------------------------------------------

## dividing train/test
inTrain <- createDataPartition(y = housing_data$Price, p = 0.6, list = FALSE)
training <- housing_data[inTrain,]
test <- housing_data[-inTrain,]

dim(training)
dim(test)

fit_train <- train(Price ~ ., data= housing_data, method = 'lm', metric="RMSE")

#showing coefficients and intercept
fit_train$finalModel

#calculating error of training section
pred_train <- predict(fit_train, newdata=training)
train_rmse <- RMSE(pred_train, training$Price)

#predict & showing graph
pred_price <- predict(fit_train, newdata=test)

# Plot predictions vs test data
my_data = as.data.frame(cbind(predicted = pred_price,
                              observed = test$Price))

ggplot(my_data,aes(predicted, observed)) +
  geom_point(color = "darkred", alpha = 0.5) + 
  geom_smooth(method=lm)+ ggtitle('Linear Regression ') +
  ggtitle("Linear Regression: Prediction vs Test Data") +
  xlab("Predecited Power Output ") +
  ylab("Observed Power Output") +
  theme(plot.title = element_text(color="darkgreen",size=18,hjust = 0.5),
        axis.text.y = element_text(size=12),
        
        axis.text.x = element_text(size=12,hjust=.5),
        axis.title.x = element_text(size=14),
        axis.title.y = element_text(size=14))


# Ploting a histogram of the residuals 
comparing <- data.frame(pred = pred_price, real = test$Price)

difference <- test$Price - pred_price
hist(difference)

#Trying in ggplot > not sure if this is correct:
ggplot(comparing, aes(x=real - pred)) + 
  geom_histogram(aes(y=..density..),      
                 binwidth=.5,
                 colour="black", fill="white") +
  geom_density(alpha=.2, fill="#FF6666")

--------------------------------------------------------------------------------

#calculate mae, mse, rmse 
MAE(pred_price, test$Price)
MSE(pred_price, test$Price) #gives error?
RMSE(pred_price, test$Price)

errors <- postResample(pred = pred_price,
             obs = test$Price)
print(errors)



#--- exercise 3: Metete en la documentación de Caret y utiliza al menos dos funciones que no se hayan explicado.

#function: traincontrol to modify the resampling method
ctrl <- trainControl(method = "repeatedcv", repeats = 3)

fit_train_1 <- train(
  Price ~ .,
  data = housing_data,
  method = 'lm',
  trControl = ctrl
)

fit_train_1$finalModel

# varImp is used to estimate the variable importance 

importance <- varImp(fit_train_1, scale=FALSE)
plot(importance)


#It shows that Avg..Area.Income , Avg..Area.House.Age and Area.Population are the columns with
# most importance. Avg..Area.Number.of.Bedrooms has the least importance. 

importance <- varImp(fit_train_1, scale=FALSE)