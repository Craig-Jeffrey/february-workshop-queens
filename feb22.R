library(gapminder)
library(plyr)

gap = gapminder

write.csv(gap,'gap.csv', row.names = FALSE)

gap2 = read.csv('gap.csv')





# functions
addr = function(num1, num2) {
  
  #print(num1)
  #print(num2)
  
  return(num1+num2)
}

addr(3,5)

convertToK = function(farDegree) {
  
  ans = (farDegree -32.0) * 5 / 9 +273
  
  return(ans)
  
  return(paste(ans,'Kelvin'))
  
}

convertToK(32)

kTof = function(kelvin) {
  
  ans = (kelvin -273) * 9 / 5 + 32
  
  return(ans)
}

kTof(convertToK(45))

library(doParallel)
library(microbenchmark)

ncores = detectCores()
registerDoParallel(cores=ncores)

microbenchmark()

result = laply(
  
  .data = 1 :100,
  .fun = function(number) {
    
    Sys.sleep(0.1)
    return(number)
  },
times = 1
  
)



