# this script loads and analyzes

cats = read.csv('cats.csv', as.is = TRUE)

cats$likes_string = as.logical(cats$likes_string)

str(cats)

vec = 4:10

vec[3]

vec[-1]

