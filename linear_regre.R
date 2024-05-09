



# Create example data
age <- c(25, 30, 35, 40, 45, 50, 55, 60)  # Age values
salary <- c(40000, 45000, 50000, 55000, 60000, 65000, 70000, 75000)  # Corresponding salary values

# Create a data frame
data <- data.frame(age = age, salary = salary)

#Use factor if data is not a number

# Fit linear regression model
lm_model <- lm(salary ~ age, data = data)

# Summary of the linear regression model
summary(lm_model)

coef(lm_model)

# Make predictions (predicting on the same data for demonstration)
predictions <- predict(lm_model)

ggplot(data,aes(x=age,y=predictions))+geom_line(color='red')
