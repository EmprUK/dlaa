library('tidyverse')

df <- read.csv('D:/UK/Sem_VI/DMV Lab/Pract/water_potability.csv')
view(df)

print(sum(rowSums(is.na(df))  ))
print(nrow(df))

#data_filled <- data %>%
#  mutate_all(funs(ifelse(is.na(.), mean(., na.rm = TRUE), .)))

df <- na.omit(df)

logi <- glm(Potability ~ . , data=df,family=binomial())

summary(logi)

coef(logi)

pred <- predict(logi)
view(pred)


