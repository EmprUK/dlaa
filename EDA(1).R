setwd("Desktop/DMV_Lab_Excercize/")
df <-read.csv("SalesData.csv")
df
library("tidyverse")
view(df)
colnames(df)
summary(df)
dim(df)
summary(df$Sales)
summary(df$Ship.Mode)
table(df$Ship.Mode)
table(df$Sales)
is.na(df$Unit.Price)
summary(df$Unit.Price)
# Create a bar plot of Ship Mode Frequency
library("tidyverse")
ggplot(df, aes(x = df$Ship.Mode)) + 
  geom_bar(fill = "blue") + 
  labs(title = "Distribution of Ship Modes", 
       x = "Ship Modes", y = "Count") 

table(df$Product.Category)
ggplot(df, aes(x = df$Product.Category)) + 
  geom_bar(fill = "red") + 
  labs(title = "Distribution of Profit of Sales", 
       x = "Profit Data", y = "Count") 

summary(df$Unit.Price)

ggplot(df, aes(x = df$Unit.Price)) + 
  geom_bar(fill = "red") + 
  labs(title = "Distribution of Profit of Sales", 
       x = "Profit Data", y = "Count") 

summary(df$Order.Quantity)

ggplot(df, aes(x = df$Order.Quantity)) + 
  geom_bar(fill = "red") + 
  labs(title = "Distribution of Profit of Sales", 
       x = "Profit Data", y = "Count") 

boxplot(df$Order.Quantity)
plot(density(df$Order.Quantity))

#bivariate

ggplot(df, aes(x = df$Order.Quantity,y=df$Sales,color="red")) + 
  geom_point() +
  labs(title = "Distribution of Quantity and Sales", x = "Quantity", y = "Sales") 

#Stacked bar Plots
barplot(as.matrix(df),col=c("gold3","red","blue"))

dat <- read.table(text = "A B C D E F G 
1 10 80 30 90 70 60 90 
2 20 50 70 50 40 10 40 
3 60 80 80 60 60 30 160 
4 20 40 70 80 20 10 70", header = TRUE) 

barplot(as.matrix(dat))
barplot(as.matrix(dat),col=c("gold3","red","blue"))


# Correlation

summary(df)

cor(df$Order.Quantity,df$Shipping.Cost)
cor(df$Order.Quantity,df$Sales)
mean_value <- mean(df$Sales,  
                   na.rm = TRUE) 
df$Sales <- ifelse(is.na(df$Sales), 
                        mean_value, df$Sales)
summary(df$Sales)
cor(df$Order.Quantity,df$Sales)









# Calculate the median of the Unit Price column 
median_value <- median(df$Unit.Price,  
                       na.rm = TRUE) 
median_value

summary(df$Unit.Price)

mean_value <- mean(df$Unit.Price,  
                       na.rm = TRUE) 
mean_value

# filling missing values 
df$Unit.Price <- ifelse(is.na(df$Unit.Price), 
                          mean_value, df$Unit.Price)
summary(df$Unit.Price)

summary(df$Unit.Price)

df$Unit.Price <- ifelse(is.na(df$Unit.Price), 
                        8868686698, df$Unit.Price)

summary(df$Unit.Price)

table(df$Ship.Mode)

dim(df)

df$Ship.Mode <- ifelse(is.na(df$Ship.Mode), 
                        "Regular Air", df$Ship.Mode)
table(df$Ship.Mode)

ggplot(df, aes(x = df$Ship.Mode)) + 
  geom_bar(fill = "red") + 
  labs(title = "Distribution of Ship Modes", 
       x = "Ship Modes", y = "Count") 

# Finding Outlines
#Outliers are observations that fall outside the expected scope of the dataset.

plot(df$Profit)

data <- c(1,4,7,9,2,6,3,99,4,2,7,8)
length(data)
plot(data)

age <- c(23,45,23,67,23,567,56,23,878)
plot(age)

#Another way to quickly visualize outliers is to use the “boxplot” function. 
#This plot will allow you to evaluate outliers in a more systematic way.

boxplot(data)
boxplot(age)

age <- c(12,15,23,45,23,67,89,98,23,567,56,23,878)
boxplot(age)

#The solid black line represents the median value of your dataset. 
#The top and bottom “whiskers” represent your extreme values (minimum and maximum).

# Histogram
#Histograms will allow you to see how often values occur within certain buckets.
hist(data)
hist(age)

hist(df$Profit)

# Density Plot

# It is smoothed version of Histogram
plot(density(df$Profit))

plot(density(data))
plot(density(age))



plot(density(df$Profit))

summary(df$Profit)

df$Profit <- ifelse(is.na(df$Profit), 
                        mean_value, df$Profit)

summary(df$Profit)

plot(density(df$Profit))
mean(df$Profit)
sd(df$Profit)

lb= mean(df$Profit) - sd(df$Profit)
ub= mean(df$Profit) + sd(df$Profit)
lb
ub

# Removing Outliers

# Manually You can Remove It


age <- c(12,15,23,45,23,67,89,98,23,567,56,23,878)

mean(df$Profit)
sd(df$Profit)

147+264
147-264

#Data Points Range Should be -117 to 411

plot(density(age))


corrected_age <- age[age < 411]
corrected_age
plot(density(corrected_age))

mean(corrected_age)
sd(corrected_age)
43-30
43+30

