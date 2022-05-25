# Startup Profit Predictions

# Import the dataset

dataset = read.csv('50_startups.csv')

# Checking the output of the dataset
head(dataset,4)

# Encoding the "State" column categorical data
str(dataset$State)

dataset$State = factor(dataset$State, 
                       levels = c('New York', 'California', 'Florida'), 
                       labels = c(1,2,3))

head(dataset, 4)

# splitting the dataset into training and test set
library(caTools)

set.seed(123)
split = sample.split(dataset$Profit, SplitRatio = 0.8)
training_set = subset(dataset, split==TRUE)
test_set = subset(dataset, split == FALSE)

# fitting the dataset on Linear Regression

regressor = lm(Profit~.,
               data = training_set)

# Making predictions

y_pred = predict(regressor,
                 newdata = test_set)

print(y_pred)
