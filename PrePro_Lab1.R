install.packages('tidyverse')
library('tidyverse')

ukD <- read.csv("D:/UK/Sem_VI/DMV Lab/Main/SalesData.csv")

#Null Values  

#col Wise
print(colSums(is.na(ukD)))

#Row Wise

print(sum(rowSums(is.na(ukD))))

#Removing
ukD <- na.omit(ukD)


#Detect and Remove Duplicates

print( sum(duplicated(ukD)) )
ukD <- unique(ukD)


#Detect Outliers


print(colnames(ukD))

boxplot(ukD$Unit.Price)

#Detecting

q1 <- quantile(ukD$Unit.Price,0.25)
q3 <- quantile(ukD$Unit.Price,0.75)

iqr <- q3 - q1

lb = q1 - (1.5*iqr)
ub = q3 + (1.5*iqr)

print(lb)
print(ub)

#Counting

outliers <- ukD$Unit.Price[ ukD$Unit.Price < lb | ukD$Unit.Price > ub ]
print(length(outliers))

#Removing

ukD <- ukD[ ukD$Unit.Price >= lb & ukD$Unit.Price <= ub, ]
print(nrow(ukD))

#Statistical Functions

mean = mean(df$Profit,na.rm=TRUE)
print(mean)

median = median(df$Profit,na.rm=TRUE)
print(median)

# Install and load the modeest package
install.packages("modeest")
library(modeest)
mode_values <- mlv(df$Profit)

print(mode_values)


