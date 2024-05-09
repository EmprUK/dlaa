# Loading data
data(iris)

# Structure 
str(iris)
# Installing Packages 
install.packages("e1071") 
install.packages("caTools") 
install.packages("class") 

# Loading package 
library(e1071) 
library(caTools) 
library(class) 

# Loading data 
data(iris) 
head(iris)

# Splitting data into train and test data 
split <- sample.split(iris, SplitRatio = 0.7) 
train_cl <- subset(iris, split == "TRUE") 
test_cl <- subset(iris, split == "FALSE") 

# Feature Scaling 
train_scale <- scale(train_cl[, 1:4]) 
test_scale <- scale(test_cl[, 1:4]) 


head(train_scale)
head(test_scale)

# Fitting KNN Model to training dataset 
classifier_knn <- knn(train = train_scale, 
                      test = test_scale, 
                      cl = train_cl$Species, 
                      k = 3) 
classifier_knn 

# Confusiin Matrix 
cm <- table(test_cl$Species, classifier_knn) 
cm 
accuracy= (20+19+17)/(20+20+20)
accuracy
