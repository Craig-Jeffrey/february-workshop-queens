library(ggplot2)
library(gapminder)

gap = gapminder

ggplot(gap,aes(x=gdpPercap,y = lifeExp())) + geom_point()

ggplot(data=gap, mapping = aes(x=gdpPercap, y=lifeExp)) +
  geom_smooth(color='red') + geom_smooth(method='ln') + 
  geom_point() + scale_x_log10()

ggplot(gap) +
  geom_point(aes(x=gdpPercap,y=lifeExp,color=continent)) +
  geom_point(aes(x=log10(gdpPercap),y=lifeExp))

ggplot(gap) +
  geom_point(aes(y=lifeExp,x=year,color=continent)) +
  geom_point(aes(y=log10(lifeExp),x=year))


ggplot(gap,aes(x=year,y=lifeExp,size=pop)) + geom_jitter(color='purple') + ylab("Life (years")
