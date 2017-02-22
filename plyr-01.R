library(dplyr)
library(gapminder)

gap = gapminder

europe = gap %>% 
  
  #select(country,continent, year,gdpPercap, pop) %>%
  filter(continent %in% c('Europe','Asia')) %>%
  group_by(continent) %>%
  mutate(gdp = gdpPercap * pop / 1e9) %>%
  summarize(
    mean_gdp = mean(gdp),
    mean_pop = mean(pop)
    
  )

stdError = function(x) {
  return(sd(x)/sqrt(length(x)))
  
}

stdError(gap$pop)

out = gap %>% 
  filter(continent %in% c('Africa','Asia')) %>%
  filter(year %in% c(1952, 1962, 1972)) %>%
  group_by(continent, year) %>%
  #mutate(stderror = stdError(mean(pop))) %>%
  summarise(
    mean_pop = mean(pop),
    mead_stdError = stdError(pop)
  )
  
  
  
  

