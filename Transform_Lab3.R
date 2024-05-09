library('tidyverse')


df <- read.csv('Salesdata.csv')

#Arrange

view(df)
df <- arrange(df,df$Unit.Price)

#Select

y = select(df,Order.Date,Order.Quantity)
view(y)

#Filter

filtered <- filter(df,df$Profit > 0)
view(filtered)

#Gather

data <- data.frame(
  Player=c('A','B','C','D'),
  Y_2012=c(10,20,30,40),
  Y_2013=c(40,50,60,70)
)

view(data)

data <- gather(data,key = 'Years',value='Runs',2:3)
view(data)

#Spread

data <- spread(data,key = 'Years',value='Runs')
view(data)


#Grouped

grouped <- group_by(df,Ship.Mode)
view(grouped)

s <- summarise(grouped,Tot=sum(Profit,na.rm = TRUE))
print(s)
