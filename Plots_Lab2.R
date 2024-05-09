install.packages('ggplot2')
library('ggplot2')


ukD <- read.csv('Salesdata.csv')

print(colnames(ukD))

#Scatter Plot

X = ukD$Profit
Y = ukD$Unit.Price

ggplot(ukD,aes(x=X,y=Y))+geom_point()

plot(X,Y)

#Bar Chart

barplot(table(ukD$Ship.Mode))
ggplot(ukD,aes(ukD$Ship.Mode))+geom_bar(fill='blue')

#Histogram

hist(ukD$Profit,col = 'blue')
ggplot(ukD,aes(ukD$Profit))+geom_histogram(fill='skyblue')

#Boxplot

boxplot(ukD$Unit.Price)
ggplot(ukD,aes(y=ukD$Sales))+geom_boxplot()

#LinePlot

x = 1:100
y = 4*x+200

plot(x,y,col='blue',main = 'Line Plot')
ggplot(ukD,aes(x=ukD$Unit.Price,y=ukD$Profit))+geom_line()
