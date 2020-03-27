setwd("~/Desktop/McCourt_2/Data_viz")
data = read.csv('radarvalues.csv')

#import our packages
library(plotly)

#start off with a basic example
example3 <- plot_ly(
  type = 'scatterpolar',
  r = c(.65, .55, .75, .8, .65),
  theta = c('Is', 'Example', 'Plot', 'Scatterpolar', 'Is')
)


#add some layers to our visual
example4 <- plot_ly(
  type = 'scatterpolar',
  r = c(.25, .55, .75, .85, .25),
  theta = c('Is a', 'Example', 'Plot', 'Scatterpolar', 'Is a'),
  fill = 'toself',
  opacity = .25)


#let's try to use our data
example4 <- plot_ly(
  type = 'scatterpolar',
  r = data[1,2:7],
  theta = c('Minutes', 'Cost', 'Dreamteam', 'Points', 'Points Per Match', 'Goals', 'Assists')
)


#We ran into some errors because we didn't start and end together, leaving a 0 value


#We have 2 options, concatenate a new data frame or add a column to the end of our data
example5 <- plot_ly(
  type = 'scatterpolar',
  r = c(data[1,2], data[1,3], data[1,4], data[1,5], data[1,6], data[1,7], data[1,8], data[1,2]),
  theta = c('Minutes', 'Cost', 'Dreamteam', 'Points', 'Points Per Match', 'Goals', 'Assists', 'Minutes'),
  fill = 'toself',
  textposition = 'middle'
)


#Awesome, now let's add more players to our graphic

Aguero = c(data[1,2], 1 - data[1,3], data[1,4], data[1,5], data[1,6], data[1,7], data[1,8], data[1,2])
Kane = c(data[2,2], 1 - data[2,3], data[2,4], data[2,5], data[2,6], data[2,7], data[2,8], data[2,2])
Lukaku = c(data[3,2], 1 - data[3,3], data[3,4], data[3,5], data[3,6], data[3,7], data[3,8], data[3,2])
Vardy = c(data[4,2], 1 - data[4,3], data[4,4], data[4,5], data[4,6], data[4,7], data[4,8], data[4,2])

example8 <- plot_ly(
  type = 'scatterpolar',
  fill = 'toself',
  opacity = .5
) %>%
  add_trace(
    r = Aguero,
    theta = c('Minutes', 'Cost', 'Dreamteam', 'Points', 'Average', 'Goals', 'Assists', 'Minutes'),
    name = 'Aguero'
  ) %>%
  add_trace(
    r = Kane,
    theta = c('Minutes', 'Cost', 'Dreamteam', 'Points', 'Average', 'Goals', 'Assists', 'Minutes'),
    name = 'Kane'
  ) %>%
  add_trace(
    r = Vardy,
    theta = c('Minutes', 'Cost', 'Dreamteam', 'Points', 'Average', 'Goals', 'Assists', 'Minutes'),
    name = 'Vardy'
  ) %>%
  add_trace(
    r = Lukaku,
    theta = c('Minutes', 'Cost', 'Dreamteam', 'Points', 'Average', 'Goals', 'Assists', 'Minutes'),
    name = 'Lukaku'
  )


example9 <- plot_ly(
  type='scatterpolar',
  fill='toself') %>%
  add_trace(
    r = c(.9, .45, .2, .67, .3, .9),
    theta = c('Employment', 'No Recidivism', 'Education', 'Own Home', 'Community Volenteer', 'Employment'),
    name = 'Program 1'
) %>%
  add_trace(
    r = c(.75, .7, .4, .2, .5, .75),
    theta = c('Employment', 'No Recidivism', 'Education', 'Own Home', 'Community Volenteer', 'Employment'),
    name = 'Program 2'
  )

c('Minutes', 'Cost', 'Dreamteam', 'Points', 'Points Per Match', 'Goals', 'Assists', 'Minutes')

data[1,2:7]
c(data[1,2], data[1,3], data[1,4], data[1,5], data[1,6], data[1,7], data[1,8], data[1,2])

c(data[1,2:7],data[1:2])




example5 <- plot_ly(
  type = 'scatterpolar',
  r = c(data[1,2], data[1,3], data[1,4], data[1,5], data[1,6], data[1,7], data[1,8], data[1,2]),
  theta = c('Minutes', 'Cost', 'Dreamteam', 'Points', 'Points Per Match', 'Goals', 'Assists', 'Minutes'),
  fill = 'toself',
  textposition = 'middle'
)


example <- plot_ly(
  type = 'scatterpolar',
  r = c(45, 10, 25, 30, 40, 45),
  theta = c('This','Plot','Example', 'Scatterpolar', 'Is a', 'This'),
  fill = 'toself'
) %>%
  layout(
    polar = list(
      radialaxis = list(
        visible = T,
        range = c(0,50)
      )
    ),
    showlegend = F
  )


example4 <- plot_ly(
  type = 'scatterpolar',
  fill = 'toself'
) %>%
  add_trace(
    r = c(39, 28, 8, 7, 28, 39),
    theta = c('Goals','Assists','Dream Team', 'PPM', 'Cost', 'Goals'),
    name = 'Salah'
  ) %>%
  add_trace(
    r = c(1.5, 10, 39, 31, 15, 1.5),
    theta = c('Goals','Assists','Dream Team', 'PPM', 'Cost', 'Goals'),
    name = 'Mane'
  )
  add_trace(
    r = c(1.5, 10, 39, 31, 15, 1.5),
    theta = c('Goals','Assists','Dream Team', 'PPM', 'Cost', 'Goals'),
    name = 'Mane'
  )
)

example3 <- plot_ly(
  type = 'scatterpolar'
)