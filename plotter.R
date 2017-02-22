library(ggplot2)
library(gapminder)

gap = gapminder

ggplot(gap,aes(x=gdpPercap,y = lifeExp())) + geom_point()

ggplot(data=gap, mapping = aes(x=gdpPercap, y=lifeExp)) + geom_point() + scale_x_log10()

