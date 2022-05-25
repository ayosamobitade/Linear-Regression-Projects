# Predicting Student GPA using in R

# Import the dataset

dataset <- read.csv("1.02. Multiple linear regression.csv")
head(dataset,4)

# fiting the dataset on linear regression

regressor = lm(GPA~.,
               data = dataset)


# making some predictions with the data
y_pred = predict(regressor,
                 newdata = dataset)

y_pred
